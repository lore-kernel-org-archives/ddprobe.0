Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07583336ECC
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768578834; cv=none; b=keAoeLqqT+6mXr41j2PriI+gJMzsS4TH7tVNFikgoI+VFKXsT4/EZYmC+BJeDqIlsVStSJVEZ/AA428+XwRmKJkouiRN1XoIeYNK5U1cBejfNMwiHYv/IjOOBskt61D6sQ/90IJzfo8EDvgcsTaccO5LAu4uXNwdBK7miBbC5qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768578834; c=relaxed/simple;
	bh=BdFgbpW2fBJqpvE8S8G07LATw7JuXkrfIxGfaGb/AJQ=;
	h=To:Subject:From:Message-Id:Date; b=pgzj+lBQ78cCmX3hVlrMcKl05ZNtkrHAsTmk27NSSeEsMqyRsI7RHRoJNz52N1nJOjQtnsFeNeY/Vauiw/G9kHpKrb0/b0/5ah9Xfx5eAvEaWL+GDk1DzPdsQv8y7daDfoT8pfKyYoX+QQ0n9xUhV3X9gBYXoLWbvgb0C9AeQw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCh/mu1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCh/mu1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ADDC19423
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768578833;
	bh=BdFgbpW2fBJqpvE8S8G07LATw7JuXkrfIxGfaGb/AJQ=;
	h=To:Subject:From:Date:From;
	b=HCh/mu1HlL7FQiFPD9gx5IhG1YGGOuEMB6n/oE3iqJD/971osh5z2EJzZ/ZbgSM1x
	 o+OQ5Bzw+XrOLTagyDLKvXelZj/1T4YYveloEqCfkH7g6qYDhoC5pow487JwXrWTJR
	 dsLXMrxO6eSFKMbkIaZSlMvz7eHLyI8mB+W/kEv4OMmyQiJfi0Ety+XFeqJqT+F+GN
	 k0kY7RF6MMe8at2twOTfeUAHLr0wXauUHTWy/AZc45tmmI3VKQrPgVzPNCvjG9x3m/
	 fOOf/f+VXrNCDeENpNXM13Nh+ZO1Bhf/24g/+7uDxdp31zWv0SjgUgTIsHiRESgydk
	 6AF7q9EdxicMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937FFC982D4
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176857883358.14286.14002674644065368234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f0254c9741f663760e49e4a4a8d7611c670ff72b68ae36b7f798674ade812a2
Date: Fri, 16 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768578833
