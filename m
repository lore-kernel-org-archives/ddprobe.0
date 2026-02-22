Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C4C265620
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771770294; cv=none; b=Aitva8tK4xShy/DMkjVu+ka+ryO4kI8OMHhMb09HKbBRT/0kdyb1aIHqDNqPdVkNtinV9qL7yTQc2JoEmgxJTrTOsThl8OPbZk89NCyWxKOl1yuyf+a2v/d1Wp9B9Fd62q7elChLAlYAvlv19AshEpXYcPPp7MhjJoDtMSAJ/f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771770294; c=relaxed/simple;
	bh=i9X8MUnXjqwntH6x0dNYUFLwRBpwxlhAk7pjJN8N4oQ=;
	h=To:Subject:From:Message-Id:Date; b=ccbgbfgwmDNIh1eKEId6tUPvP3MQUU9zrr7DgJ8FFoeW6RpQaPN8Mh2uUn8qxt/qcWDJKdzn0DTGcmze+yZR5SGfmyUjZ9p3VgKhNsPfQsVvPGarFeN8Snmys4PETMVFjbtf0UkGCBDlURWdj2PNPcuOYNEqi8kWZiJh4vAsRwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KK2tOckh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KK2tOckh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35E9C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771770293;
	bh=i9X8MUnXjqwntH6x0dNYUFLwRBpwxlhAk7pjJN8N4oQ=;
	h=To:Subject:From:Date:From;
	b=KK2tOckhophUdd1Fxe5RN8krrzcICYTrQtJUxTOLFYaYaORl9MH4fOxit27MdwYFG
	 GMUL9aADaGycgJQpTOiIgUgh8SNG7sVcyuzygermXQ8qUTYZxMA/EQPhojS9jQOAHN
	 sjjkc9QwNE23LoRjjYB3XHLav+AGg6mfgG+nSsR/4o1CGqeTIo5N8LkvvdhEIAwJ/P
	 G7DG5VxS5OH3gr4hGwpjMGm2OkKD5Ht1znExC+4Za8ltmKvASH3UE2BrmsU5LMmVO0
	 lGFQN3ECO7PEUGb7NTzLKbZ8PxI+mlGpGCStfm1L22wEADWtjobDzEroVgmqdjIYvl
	 dT9mcV0Enh98A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EFDC6369F
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177177029358.16782.7562750691323980512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d7773f38b820d9de30b91aac41a6de11378bbfe5561e4c7239595963574386
Date: Sun, 22 Feb 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771770293
