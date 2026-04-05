Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E075175A6D
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 22:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775427934; cv=none; b=suH5zsQAQNq37utZx8VSw0KsI/+vElG4r5GHRBoHWV5yj2PgPOAojrvFrMRzPEzv8vW8VtXJNQ61LkohjPKN9ACiCytrMxTBIt8GyLqhKO71Yt5qYvZwCgnLvkFktfGGPvXF23p8rv66oXiKzQcluNx7fU7fpRwyDsxE5NPI1FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775427934; c=relaxed/simple;
	bh=pjxUbVfgaf9nUVYyGDS6vxTa/5h1/tptoCfiK0gh4FI=;
	h=To:Subject:From:Message-Id:Date; b=OBhjOIPClrPDoyoDyl5ay8ch3sT3HujrLWFUqMgihK7oQJ6Xn7lFhYHfh8lXueSPtGvFxJd4G4pABIAa20Ik1cOPbm67ZnH+yjlTPSTV8AFfxZtcYDzNa73WCkFrHbXjO/IMjhE4o1NDLkdfNE7HMoGZhEgkVY4i+7W79pA7b6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUKCfgXV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUKCfgXV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C596EC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 22:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775427933;
	bh=pjxUbVfgaf9nUVYyGDS6vxTa/5h1/tptoCfiK0gh4FI=;
	h=To:Subject:From:Date:From;
	b=gUKCfgXVSgeq1LRtNRcW3eKzfjZBhKvS3oTWCCzGXyPa01qZ4Ctd63TyuVbv/g1BP
	 sBvZ36lzmpbFb7keC1od4K6+ueMgsu8mNeqsV2hADx2pidxzXFfA+tzfKOf3poAcyK
	 7IQBxcRbOQffFnDlBXiaTDi0iIW66GTYbdCqt8I/JqGVCZ8oU1W5oTI1qz0iOi39/m
	 Mgjcp+Ovro/GQfErx1RHkZU3aa8ti7wUAUT2nSBliQfw1FkbfwmgHspsD1dhDPTA3g
	 cMg0znKL3UmodcGrVrhlNUAzYlgxOEzDnJzMjryK3Vqv7YBgnGOvT8CWS4VDnVcY4M
	 bu6XsJIkOxLIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05C9E9D827
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 22:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177542793370.24845.10314051338779444929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea38590c2db29fa186ccb3d8cafbc19951b70f6c8e57de19fedb006c290018e3
Date: Sun, 05 Apr 2026 22:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775427933
