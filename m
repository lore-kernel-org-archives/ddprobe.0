Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BA81420DD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749777594; cv=none; b=d3FU9WBaH0aXcm8TP0Amd3zfDLiM1nqdXpp1wjplO7ZX/sx+oLuxuijrpODiCP5GSUE++AAbK3mYHH7RsBsRT7XZh/GOMZ2QkKeBPwNYPGjQjmrZBwxSHgH5ZtiTTjz5NGYaegdTYkvKMGvC2RDXrTMTPcJhtE8eYBSE+c6GY20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749777594; c=relaxed/simple;
	bh=YOs8O73u468qWomJ7hcEB8lfvpOfHuEqFZZksvuAwH4=;
	h=To:Subject:From:Message-Id:Date; b=fwfSp/aD57T/aT9qxeni9xvQndta49rnVWKwNWWznnLWNr0JFDcE0nI8YOpKJWJYFFXR3u6SLwU3GfxDnoKLTad9r8SqWrKKJqbXF9rdQLDTvR1xCWNlZGqj24g2ZE7ctrFa3E6juWLBZcW0EFj8IL+rF4u/4Zlm4OgqukapWZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vk7b8bXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vk7b8bXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F5EC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749777593;
	bh=YOs8O73u468qWomJ7hcEB8lfvpOfHuEqFZZksvuAwH4=;
	h=To:Subject:From:Date:From;
	b=Vk7b8bXOqwVt6xy8fmJb5tIcwbGSsLqgPORxi9AEal7mTjUK6bfgtXdypHH0XoLOH
	 E74tdjbWBtlfMUjbsskvTfSouWZLDXxFVtpZBy1QD+H2jcaPKrKOiiOWcUZAtqsaNC
	 8DxAE4Q4/w726kViY9jmsgk3+KmpjY9bFyVmxfdmKeCudhh8lWZLwHFbVpVM9956dW
	 o7aSU33EHDOf0LWFgO/j26ubJmTfmvjreLV3wC3aS0Yi0/LLK9U6cBv1otvFbqsPGE
	 w3YDqxt4Mu8hRiRSC2U/O7xbs6P0BCwtNiXhTu64jioSB9gZjweewIH2rQ1DxvZMfY
	 rPVWaQ37TEJVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9040AC61CE8
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174977759358.29324.15664888480960124900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be4abc0338902b70d0249a7c23ab1c9e0545e4cd0944ad356970dc993161adab
Date: Fri, 13 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749777593
