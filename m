Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DE2EEAA
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749258594; cv=none; b=XeS80AM98wAOq7+AtvIFrr9pyD+vquTIDjMMHKyNKfrDukEJHe4JpbgUq5sCFXHrvcnfOq7W6EYZmFX3uR0nhDtclaHj/JQzIu1rtxLoS/zp7jKyoSGMIMxQcucWHcSGYeEpN1ZtR98fPpAA6qVzNVnUiHBAZZMJD6hI7v/sGlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749258594; c=relaxed/simple;
	bh=pBCkHgHaFFhW1wMTjczXi2L75NxEobxUVY5Uf51DL+Q=;
	h=To:Subject:From:Message-Id:Date; b=BkTOYXrkB/gZeJI4Cq/N5HQk7UPWJwtp+/OAn2F1yJ3MDbRtq88F4s15bONx0oGe15K8ywrXriV/ULJbPnj7pCMmlHwt2dFCWqWPt3Wq/wcttMTqd6n3dGI9Nqf5GZT2X0KHXyagN9qco036YOPCtt7E37EbRrKLULPLXx2ffJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pto3V1qf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pto3V1qf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F87C4CEEB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749258593;
	bh=pBCkHgHaFFhW1wMTjczXi2L75NxEobxUVY5Uf51DL+Q=;
	h=To:Subject:From:Date:From;
	b=Pto3V1qfoUiUpg1hu6Ls8e3U3iWeNoOpQnTMRNm5l0c+N6d3PdvpIQAvai6l/3ySy
	 sNlKoCB1V6BHLLINI61aBc4Pxmi288qTDbgrq4Z5D4aa1GZOCC3CCdE2ZtgVpSfTE4
	 YfGFqRWnvcupTVcyBXMApFmyAAX9O4zoKFV1025u4biVp53jPUPusQzLQx3YaNv389
	 WIekOLTKxr10yXpJHqL9n/bgZk8NfjEiTjhG185fhYti3MAlJoTc7Hrw3zVyJJiWOp
	 kbHD1ZEI4Osa95Zv57dWZPIgB6nveSIBTccypEms9XMNUL+bAsh3FQFDeoo7XfFsmt
	 L7lFbja7MuJug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9618DC5AD49
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174925859358.13822.5002614975694357516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce69edf50b958cf942298e7ad58b8fcc6838d620e055020e82bb78b4e3ccfeb8
Date: Sat, 07 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749258593
