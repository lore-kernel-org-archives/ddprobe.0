Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EEC32C938
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762438794; cv=none; b=BbGjw9nC/Rcm1x6033nTPDK6MsA1BbXcfjabRz/dimhljM3QHFhCOpbgC5q/V0C8Rs6XROSqlhJMFQhPMOLgMDwLMCcNMpOpN3vMabgM7Pk9jAMLBB82exUbJjfrHAixgVS6XZhUqsIXfT2AOPdeue2zsoD3J2tD/yTyVLXwuLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762438794; c=relaxed/simple;
	bh=D2PouRwOXbPrqmlU1KYx+12vKgrk1m4WMfcUU0OeFxc=;
	h=To:Subject:From:Message-Id:Date; b=QDeH4HfbAZ6IIgQdNkf1RAXCjVyD/ddeKqvrAczgCJlZz3WfbrNfX/loTaEGrf8L8F46QLMIa17FEtTWKJje9shS6Zvn+OXYyFfM/5T6Hf7SwcnU13iT92+QP+VNKCa1gf0u+RG83nicBnjgaUb6XGZ+eMFwzHDx9D+blRyanls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WeUgqsOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WeUgqsOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8C2C116D0
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762438793;
	bh=D2PouRwOXbPrqmlU1KYx+12vKgrk1m4WMfcUU0OeFxc=;
	h=To:Subject:From:Date:From;
	b=WeUgqsOIQ4/TO1p3GFm63X9w5vRCL8YOWfNOb24DPWGR19z4KrsPiZkf7X4HlTMxX
	 ra2Yp4LpzpgZd1mQi36AX3S0hCx6IWKTeBtcNO7OFPggvIbc9T3N74I8tulTySV+9R
	 S6vW7eKEsxEtLc+gpGvwEBPip6boA7VRhshzNtdBZ2VJRgAH+u9pPrmWbPt8vnUcA2
	 XpjcoUNydcUJwrRXgvADvGaYvYrZmfHJdhgLX1MXUkcGsG4cMkyC+59fFEMC79Wrvr
	 LAu6FVCrWkZRQtJ0P+fmc8AlyB6G8ea9Eddj8hjPKq/1FfuCIU9g/4AKsp6k8FbOL5
	 sNhL4ZPXlKm4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE73CCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176243879358.13359.12012434401375778525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 427a6e4f49162cb379d26bb791818b524389d9f43e4d443ee4293c6cb44a2f74
Date: Thu, 06 Nov 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762438793
