Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6F81FAC54
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747312794; cv=none; b=FDYP95vr+Q9sfe5yP8TlTFcF+mU2oVOcJoz2P4eKAACU9CRwaNyo+tUoFw1AQ/E5n7Z45eX4NmGYg8bCMqDDmrQt+vv2TLIAbeN+PVzF/iRXGak/fi2Kwt2VF3VjG98iTJGPEjdo65+Zy762cw+OZf6RFbz817DCHCJx2NbOoGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747312794; c=relaxed/simple;
	bh=1RUrp+SFrKStSPUh5/8ooJlhfF2B4udqL/ZJgnoyq5Q=;
	h=To:Subject:From:Message-Id:Date; b=Phrd8/xl8afReAAMceRtuW7XJCckeluaWyd/33cYVzqOpr8o8i3QQ5XfBgOzdD30x44wgegXkEWDCmN5T4PWrOym+4Y9Fswvu3wWcEVCF/+H0UjEy/fguu3jXSPy8UY7JNKuYIJBllXZD9N94E5cYM/ijRiALPUji/fkz6mguRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xno1j2Z4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xno1j2Z4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0462C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747312793;
	bh=1RUrp+SFrKStSPUh5/8ooJlhfF2B4udqL/ZJgnoyq5Q=;
	h=To:Subject:From:Date:From;
	b=Xno1j2Z4YSEa/MbA3huoJjx2JGFTngzgFeF7hrkdkoiTuVpwtgY+X8ft0qXTln1ww
	 lfJUoOwh9MmHh4v2WeWE6nlZcgx+3LztX8AF6Ntq7GGLArd2LJwMJXB3cUbGYeVmEJ
	 atkaKOfh2NLY6Ja3ciZjDpyA3oNmbXkw1eHaAfvoaclW8luumIVynOMjgqY5pf3ecD
	 iorzSWB5PIsKxVlYWHexYlUGkMNowrrGRdKOEkI2T121tVdm/AQUre8N+2eUsU8ntc
	 LbZKYiYoeAYo+fTl67Xzdm6NekBddhRYw4Md+cefqpXdtzpRSGJPxqaM+w/Sk8bVcZ
	 sC4bjNrVwvQug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CAC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174731279357.21598.9008982579701830329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cefeace58ade8745f4cb2d21b3c6201b642aec1191a8eb760be5b7af8d47ab3
Date: Thu, 15 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747312793
