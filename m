Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D688367
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748117994; cv=none; b=E7WiwIHwqoOUumszKvh6sGSZgDZ9NfiOCoTc1MGmhb1O88Q+sztuC36fbIZITq/SJDtxnjr/hTIrLkG+e17R4O6yy/yOxfYkECCY5nLhFSufBvQjTtu9BbcqEgbuHrmSlmMzZeZ+XULoBQxSSdA4N3gvGmeaRqnoaGmrkwT/r5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748117994; c=relaxed/simple;
	bh=iqI15bmXQGRZAcbHmmCxZk71ZrMI5L4O/QpcpxLP/6c=;
	h=To:Subject:From:Message-Id:Date; b=n5dv7N2R55kNRsn2PtCEcrt6KB1dZISfSF1EGpPd/K25bnDVXkb5HV6yKxvMNDB3BUbc/hkEbOJCpG0SyeVpvIW+QMb+Jb/B0CLze0UQceEngQ2aLV9+CZvVKQ92iOan7GS3maMG6OdmW5+vr050WVPAN+Df3rFPcY8MCqMjza8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eld+Wph4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eld+Wph4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBDEC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748117993;
	bh=iqI15bmXQGRZAcbHmmCxZk71ZrMI5L4O/QpcpxLP/6c=;
	h=To:Subject:From:Date:From;
	b=eld+Wph4EfznY/jJyIRmCdBR6SB9qidFKe0JxrLcBNSxJcs+PkhCIQr63ZzCP5hK4
	 MF+Wr3zMGm1bXp4u0XQHHkhTCydHLCtpVHM5zZ+0iaNi+0th2a1+bu/tiY0JQcgFna
	 Vp8nIJOH/f8CcIP5PfC6DmgPkcPjpobOLGB6asQdKy9E6sfCxnoMlomLG+8lRy3Jsh
	 gL5GO74+szQyngcjODdd/8KFsmqqfKKHMXAw3F7pX5PWwe4gCLP1MQAvDnzcYGryK9
	 A65/s5JVxhutDMNwF+QF5743mG6cwJZg0S9QXBnQg3WZMId55D+4yZZ8x5wP1v6tIP
	 e7QLVLcWKLUDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A77BC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174811799359.8007.13922522375606695011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ea0e07dfc95452ec67f2f8bf1c2f23325b510e2ab53644e2db5125c450b4c4
Date: Sat, 24 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748117993
