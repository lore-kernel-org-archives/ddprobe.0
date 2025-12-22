Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1309833F8CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766436234; cv=none; b=uyL5MQ/nHDZzZKroxeaalBQ3vZtxkoC6F7OBLVGDtd99bulC+MLhlvb7SQMDbXXANcz87UCIBhjV7DmYgqD6VeW6nwEGSr9FmLktrW99/M4UuYywiC6heduDXn+thzY88v0PzuOYI9Xsn4cKLq2IN6WS6r1/8hrAFFj+0ytPjjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766436234; c=relaxed/simple;
	bh=06I8RE+vLiX9nDGU+GN1ayVVzs5qbMdpZIYlAz5uePc=;
	h=To:Subject:From:Message-Id:Date; b=Yq+RA5rPoQ+y3s79W8FnVAT4bOOnsCkzz7RHtr5kLN4PUk27UfOu9RPOq8lHpCIvCC+j+22ADuZjkrKfPtHgVFGfsAZhR2qEy3MMwlAEcMJi0icGrkB6aIyu1pwlnQN1jxXnfQ0mXfdl7Ue9bprvs7TcDMrqKZ3UFc+9rWBM1wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKJUggUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKJUggUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ED7C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766436233;
	bh=06I8RE+vLiX9nDGU+GN1ayVVzs5qbMdpZIYlAz5uePc=;
	h=To:Subject:From:Date:From;
	b=qKJUggUvaEeS4Ee3B2LsRoRiKuXVc1/CkRhCsTywcSVKO+OpH4zKidP2hdNKtcczy
	 dTdK6eAOCBKv5zx75Px2Vygcqwal4me2u1h1sDEXJVLuVNASKHI3JaYLH/JE75PWvX
	 ve3rp5h3p2FZuAuAdWZYkBbckUByOaEhIuY+MIK6/8fiz79beutEIdhOBHD6JKShfF
	 /lRD5OyaPtkCc715U1dMHehnbCr1pBouRdWOdNlDxgwsJopAKFXE7Y4SNW1v1i1Lae
	 M3+PlZ0/4HK8dINThUSpb+Zd5yJ0DE6y4djHUjNOm0IJMC5y6n3TbkIN/D7UBY+/8t
	 QVxFDrnSGp31w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9386EE6ADF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176643623359.14924.8206177299931543552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f77edf032e383d8eef2a905d24cbdc9a2442fe266fefb7da80807f57206242
Date: Mon, 22 Dec 2025 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766436233
