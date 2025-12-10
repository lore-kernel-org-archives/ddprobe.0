Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183AE270ED9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 08:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765356774; cv=none; b=cAHhmDRDS5Fi5GXlrtk9jUL8nP5WMBNmqEo4e+pfoLcvPDx+crJLTzrpcSkB31J1IGs+BrT7eB1yuHMabiUZVCOaJLEdiQXaFJ03UwBO2ZsTSJJAbCmW5F5zL/O129LWSkWC9BVYCmvb+AKkYdTEyAO6BLb4vK0TbpnndHbmhWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765356774; c=relaxed/simple;
	bh=YAIxtzKcSN82ysbK9OmLNcToZF6Oo45EkBm/agOBWSA=;
	h=To:Subject:From:Message-Id:Date; b=kda0Ie5eD8wdJRlR/Lp2Ygvqs5lxmAoHPvPDlCMcmqIt/kS/99j9XZlmH8PBXZNb9sFS4axKCkDuScnBTElX7B33uYRCRLszA7BVustC8hDiED/9keIQiiFuWH9QDGpjR1Xckt3f/QA/JCggusuY33elUKob8hX2JOHs6MPJpR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcO1BUkq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcO1BUkq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4805C113D0
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765356773;
	bh=YAIxtzKcSN82ysbK9OmLNcToZF6Oo45EkBm/agOBWSA=;
	h=To:Subject:From:Date:From;
	b=DcO1BUkqIhIfZZOz9DF3FKJJerc/vr/gCQ2nxEwR3e5wCCDZEEMTUDZqqWVFE10K/
	 8sLER4Gkh1ms88xPbZJ1xUh/UFQGtZnSAuHrEDoJJmYSW8Rs3e5Ocv+o000Uvc2poe
	 mwM/z1aiPxa0x7GCQ/W1GkrJG/6xXFjSnWw5NKZskKU+nJd+JNKLwS9jCswvkz23sO
	 gReDdr5l8sa5YvG8w8wlkxmCVjOA7A/I5Xorx2t8fWNMf5TvMMOBYeQxFahERiKSVR
	 KKqizvugEjJvo3Z5T2QQqWOmiITRihhnlYk6ju4rasZA7TrJB2LgBhYlkkzkEIeLRC
	 wy1wpSGZinLMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B3D3B9A9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 08:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176535677358.29063.1742716894745239381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e5f1d991c565bccbb668bfd630cb864f361ad5d704a88caf0291c662524fc7
Date: Wed, 10 Dec 2025 08:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765356773
