Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E5E7E1
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749862795; cv=none; b=BJFMpSY8YwFcWeUYgRPjew9NolAtxLODvUDdmNwlQF999CNQG984Mj+fT1C7zMHKlnWgl867tps7KKAC751JjoMjb0jWfQyfHXxWmno5h/U2Mqtfxua1jhQsDLJ+xOEiE4Ts1wfXZHx6fzPPgC1LvWG52zAJEBhPBC1gVYCXrG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749862795; c=relaxed/simple;
	bh=27jnaoGCLZ2zfQKIo/01qSqm9oPA+MJknqapdTtB1Ok=;
	h=To:Subject:From:Message-Id:Date; b=BafIz4u7yPq+aCaZc86vuhAAfnif+Y1Li+NKbaoZhWIeb3tLptalOLc8AiTwiOiI6oh3t/bYcIZxyXjbXBlh/oA+YIKE6ao/IWvjrwFyvY65YyujDk24+/kf4di12LqlEz9iXcQtWEcL5hYDbKkmaqqlqnDQHoTyAkEVQg13CDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4PcM9Lk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4PcM9Lk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E165C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749862793;
	bh=27jnaoGCLZ2zfQKIo/01qSqm9oPA+MJknqapdTtB1Ok=;
	h=To:Subject:From:Date:From;
	b=n4PcM9LkIA1BGsEsdlhcrSSZQGzNnHqzKvg9DW+izMx5NIUobWtJ9Kwk+QbLf9O8B
	 UojBF42a1U7wVSJn6RJiRJUWe+MKPWE22g5RqE3t0l/sexoMOeakv/+OLCugBkIFgo
	 JIx4JEZD/wTtAP8hiZ2Cn+NmLKr0Iucx/HX8vHQCeNH11TSXoMZBmmLRqBNjJwoBaK
	 rK7CBSU2gzRr0tY/VIMi2MhrdMj1JAdOOPX4yJuQo7nSJE+RlXbmQlLXwc7G0e7nSm
	 iYDW6BZtKP1p0JLF2FQyAKls9Ek6SWdoF4cInQidOIFnKjVBCUVanlJKRg6q3aq9KH
	 TTosb757o8ayg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7F4C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174986279357.470.4885941454384088032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0644532eb8e4881ad2ec08819c770078c2936c768104df0c0919da3f413f08e1
Date: Sat, 14 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749862793
