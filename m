Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D3C2AF1D
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758431994; cv=none; b=iaeaKUmwWttEf4nqITwObpsGHtPqypRIDUuv6uMkJJADXnjEpBv0L5bALOLV3ER/bEHWwZoDvlX1FVwD6UcyVUrwie9nFC5UygRqquVOIp7qpH1bJbxVeW/rlaY7yNDaTkD5BCqCr/iuxVuQPvO6jjWD7MUHkSsyIPVyL+6t/R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758431994; c=relaxed/simple;
	bh=rjW6C3jMMQXAszUIR9vg1xPuindolQazt+n3yzCs6Pg=;
	h=To:Subject:From:Message-Id:Date; b=EYaVMPAxRfl4gy9BG3vqbybTsyGsQ1RuNAPzuhdHwZW9YUb6qzIZ1adbMvacKm3bvCPfHJsTB4ps8iCnhkor7kn1A2Ch3GuBSQPY+hKqhnYBLC1nIMczEBHymswi76NYDWG5D0nvBIvIooibMYJlmCMDSOhRENwxtLwpz1gTHkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Es3qmO/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Es3qmO/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DF6C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758431993;
	bh=rjW6C3jMMQXAszUIR9vg1xPuindolQazt+n3yzCs6Pg=;
	h=To:Subject:From:Date:From;
	b=Es3qmO/Wk4Nbkznu0Xc++8OkzIE81KosBny0+VN6zVlOJ6lpM4SSEDWOvBny9Xw1o
	 t6f69auB74dTEqD5FvjbtYJK/wLAA2MfcqTO3MQbOualvHhjW0T8vgjV2YD5CFFH2y
	 csyaHMHu5ILu+mdYlCX0Eo1M+TXOzK0DzwP2VTAsjBB0wSb8ZA5YP1rsH3zYVG+373
	 O39Nl/FkXWVG5RledyGDQolfJciZpkbti3xOFU6gXMv7+fbfrXae8upf8tUTk5oIqi
	 FGOHb5n3PGKZaOZFH3bUBUIKalQtePNOsXkBuTBNEyXrPTDXV4qOXa/bbsvZSTFVBH
	 B+Yw0G1ZPiSNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F9FCAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175843199357.3831.10410319125815532829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09007b4192d675158ecd39a81e46682f2c5354754128b66eec31119428979a5a
Date: Sun, 21 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758431993
