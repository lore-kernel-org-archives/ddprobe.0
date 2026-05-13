Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324C246AF1A
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 15:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778686834; cv=none; b=HBOM6e9lN9Z/OIBECcNqgDyLvV6oBEHoc0NTUfr+6z66MKATpFeZZNdsf30BHcRzm4L+cc1nu+TH3DX84D4iJ5lZeLoxigccJigzmBbtpIzawnsTTfZNVKAMCoVbw2a0fXp8jqvE0xfhqmiWC6jjdcbXvqdmW5UYUAGOcDYE1xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778686834; c=relaxed/simple;
	bh=97zOTqgI2weVw54eD0+xy461/pCEcv4TCUKwM8nlg/0=;
	h=To:Subject:From:Message-Id:Date; b=UycldAVTSr1wvdFxRppGDS7/v31T2PCgROPiO+g+GZzE4qMtY1vA2N4ua3PnlpKNXuB94GkPOdvV+t6g52gVZLamDBpQQ51ZaeqedteuIZZJWOv4se6Vc6yZe3IuJSQQOIC8652AWK9Sb15i4nGU2Au+HdpEGbGeBjhB0IL8d70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMPKWiFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMPKWiFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA6A4C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778686833;
	bh=97zOTqgI2weVw54eD0+xy461/pCEcv4TCUKwM8nlg/0=;
	h=To:Subject:From:Date:From;
	b=WMPKWiFSJJF395yGvM1IYoj/QB1d6mcAOmSQhBotYtjRLTU7jKF04j06xGvEZLPyQ
	 ApILEEUxMiC7Bf/FGym+/YjfGGW0IgpGSpTRRekSjqfxufEHky4mijSqtw8rSqFR26
	 41Qf6HBOv2tAcuTZHT8u4+RyZXsiGY67EkPM8TlyjQuYV3PIFSqM5zUjS85Z8BcUNY
	 CWFRvqCSrfp+fVoO/x7P2XS7ncJBQlFq2a8HmebJTJAZ1w2Nxpu07pZgGdbyyTbVL6
	 8hYdT6ONTAAMGsoVHbV4Y+Tb3vWqzmiHcN6bS1owdss98YxlNlEYT0pBeFS9xMP6Fw
	 acJSR04/VV1dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBC6CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177868683369.5587.5004536409916728935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00b9ce9a3dbf2df9bd0234d13fbf53d66e90bc022c8b4a6c83a32c79149a37f9
Date: Wed, 13 May 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778686833
