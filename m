Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DAB482CA
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711213697; cv=none; b=Wk3Exll5sglYdtVIJduXdq46NIIvV0gdVUHwGCz34AHM4/vM6BKwN2pQIqq2GC8GCSQ9zLbHXQNSIXZk9UG/5S1BnPrbElgObNSIjCm3A4LmZu52cMZ58ZUpUTlPvs4/91cvcne+EtNdK6+Xmp+1cYuSV27aAcD2yRnO6CeuNwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711213697; c=relaxed/simple;
	bh=ZzCyCt7sefqtcYCOU8mOYNqywuW9xzZHfDdDOuE/fz8=;
	h=To:Subject:From:Message-Id:Date; b=ipZURatk5eGRxztZpzKPXphkJRJvMV2g9f9XoS8eK1DO8crqfWnESVbn6uVRlATOtNYnn1wUoyJbUcuB07nWvCGzX94B27wkm2yoU8/US2tuEUlzqV9TGVYqWUSh5HrAXi+4mps1VGCu5tXOt5pROjl5h3JT/0Zcu6s+QOZD7A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDBiYsS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDBiYsS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81FFDC433F1
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711213696;
	bh=ZzCyCt7sefqtcYCOU8mOYNqywuW9xzZHfDdDOuE/fz8=;
	h=To:Subject:From:Date:From;
	b=lDBiYsS5cQTCqR/7CMub7FcHLXiw5/9fMnloIUZ/QeWzTIVbovqhrZfa4ts9vd7vZ
	 NPsFUC9n0MNQW14mmcEv2zW9lGcJRlgqBkXJt0Wo10uNkWCBv6MexBCIQq9qNXukTd
	 cwaVy7f4zxXybCDxuMFItrWUyRtN/InlZyKFa6az72rNfk4tvAoXQI9k7kr5e6HV3l
	 1CMpHn7TV8XKIiSyeUoDFoTrNa7Tixf+4X9LFawomxyrccxo4NSSxr6Tj4x1nXHoIS
	 A7pwPCpzcyjKnz64fBbTVmbmHGnJudvPzzn0NPPxoZJ9BYg7ZSO1iugdR1CGqhnE/G
	 i7FCrLUdYezug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D901C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171121369639.18163.9365597585037831197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 897117a8aa0b13513b11597dbf1e27de9ba9e80b1863be33081c487ba9dbf2e9
Date: Sat, 23 Mar 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711213696
