Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 005312E842
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706383697; cv=none; b=AOxwxZGG/ACbGjxRX4jb0hcO6+FSHFhI8Yax1m9KeaahTieyMSzVjQuV7lNIP8fCpMUI5EHCWfRVHx5VLnMqatPsv+NP8JYfgHmmfyW04U8f7nm8JvOn2WF+pBv/dVrngkp0zzG5myhDRHYmiTQ0ZwIC8RGMjdAZSxlzR0uTDUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706383697; c=relaxed/simple;
	bh=A4yhjCU6ST+lSrjePmJAoSyGRJqryLyGSa9EhEoLNlE=;
	h=To:Subject:From:Message-Id:Date; b=lHRqapk9k8PmKqEbdeCxdVUX4KLG5ZVRyuI5l1C7hvpZnEOrlxS4DPcMoc7psTGZd/yP+l9RaTZSUL5xa2jHYowup4+76csmM64R7jcsKDknTqcM/sgRUxY7cCYGXa6t6NCyc9XJi/nFzwPdZQz4rGXGA+iPN7S4t1Wi19w4m6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UfMiCIL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UfMiCIL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77026C433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706383696;
	bh=A4yhjCU6ST+lSrjePmJAoSyGRJqryLyGSa9EhEoLNlE=;
	h=To:Subject:From:Date:From;
	b=UfMiCIL23O66pspUiRdTfRmOVx40M2l4desK8vpoBnU9TpxWlm/x/f5Zwg3MuPoiV
	 S2mwbnisFDzkwk/BbBDHWUtchgiWkcciT428+lyDaKzVhGmOVt8sUWEwAL0mbhVDzX
	 VLoP4X3E0Tc7YppFff40MveGj263lcmWZfVFuCwfznb/F8Bpdsf8A+mLmK53qWUDyJ
	 hWjGTUh9/w36VeJcBD3EV1ewcVDdIJ5tFwOEi9ipWiGtAx+VwGYdOFwtuVEesEt7nH
	 C+ZYJqLgnuQ7CdiD4RRgbL3mVOFfAuShCsdx//0hGUpaZQmpNc+0V4mcmlWBstC47t
	 h/vC4KfyMHuAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E455C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170638369636.13246.16317758616387345482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0827e0ae4f6916bda5b3a17e30c0f0d95cbf8ef800666e28ce91da32f9d58ae2
Date: Sat, 27 Jan 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706383696
