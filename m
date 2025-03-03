Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341B023FC75
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 16:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741019934; cv=none; b=UnBpD59CQWyz1kYHxbUvYkso1XN8+7LJZ9dM36OhTh0N2GyYnzaIhspEgQgw3D6N3y1GD8TA9K/ZNdx5vs5UAAOzhDdPsSJ9KNrde6aAMR12gpsFO5ah6ChMd9JboQqP5HYzMjUWmUvSLDPWrYNDBNq9CkRSzEyQ9xNE5NeWoAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741019934; c=relaxed/simple;
	bh=RGUAomSBcW4Pe/+pa8MdtbfnYLxDm0PdnJcs8c2N0D4=;
	h=To:Subject:From:Message-Id:Date; b=ZY/SAPvXsfDo2NdVOrhFWDtpmKg6fknXHAUEKLH9j5+F4U8Vl72gNUGtO1CebXa+RklXSN/xWMTPMoIpdlF3sC8OF5IwYHms7v1AO00WrKo64szpV/rv+VULZwTc4A+goyuaTKS66sV6G6qEo/qIbhLb1P6QPsRMMJxPbDgwqbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S8vc49IV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S8vc49IV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA1AC4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 16:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741019933;
	bh=RGUAomSBcW4Pe/+pa8MdtbfnYLxDm0PdnJcs8c2N0D4=;
	h=To:Subject:From:Date:From;
	b=S8vc49IVFqWRScIU6Bc1IN/DUq+7/K2dCCfYyvMPfLF1yLj4q4iEQhD86v/VJFRAF
	 UODOi/dmLWWHE12Q4CPz6zZTE2SV4AFYAlfuyNW4Fb4sATjnW3tv6kzFEOD2VVcfGy
	 6ZaPM3XWCifHLhJ1P0I4FquucSfQqq3v5gj1dQJK97AdOM1uwcdTRfSgsxEa4jcl5h
	 Abvz0pU/qF7yV/GS8CripMeigLrArbp1pzPasJx6U2sjoPH+fTpHINkzSKG3oqpsHw
	 9t2WYaF/nBX7ChiFQ6yA1HX3+DLX69xFeGJnlGgcny3g4cFw4xwrCslLAq5AL92pSf
	 NCIiWaG5k88rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A53EC282D1
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 16:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174101993361.10240.17480021910535592410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daaf238f33b6e419b512bf571ce0086860cdc92c9d612d4805bb63026c7968e8
Date: Mon, 03 Mar 2025 16:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741019933
