Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7F732E6BA
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766838234; cv=none; b=f53OfmlixdCiSAuOJZbJspGJdT6zMmCdM6m/2bWJhrnO3HeNBGXxs/ISrtkfma//E+E7xmMVzyaD5nEkbXr4Ti8Wi9I1+Km4740RiM4Kshybeg/cK1YbC2LNnCsCR5BneA4u+qogPctN41MooinWLeXWD3cjBbIyNct4SYKaFSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766838234; c=relaxed/simple;
	bh=X/SksALFXqf7iBsLnfMid19N3VCeoewSWp0TXCm/oBE=;
	h=To:Subject:From:Message-Id:Date; b=DLt4T2v/E7+eZ+pk0MhBbu+lEuEnvDFaWqEJ//wKGkSe0OPOcdaclb05zxeUTC+ApWqRkjDyMDvJBdFLroTitb+aBjPgX5RaLQYxKw0uzEqAsPHiCh4rfo34OEBz01pkae+KRG3RcWDQKeDBgdKf7jqJA3YUkEIYUya8L4gKEzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBii/yzF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBii/yzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F24C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766838233;
	bh=X/SksALFXqf7iBsLnfMid19N3VCeoewSWp0TXCm/oBE=;
	h=To:Subject:From:Date:From;
	b=iBii/yzFKJjdUDdauLXUQJCrFLiTVOgg9ELdxmqaVQvVOo5qujuVFFm6jSW+g+J+a
	 3BP+VIsPN1gYkzG2/FHEyVJYv9DnbxPRpMIoEhbeAKbrsfc1gRHrPDHCY0pDJnZAf9
	 CIO6nJn9MYI8+fd/8b7rySn74MCUEPytqAVNsh2U5kGGW1LqwkWmTz+bnYFKb02W4X
	 +iWdjfIRLiDNqtpFYKjkN7pw7Q0oJK5mmwcuccYBYfUPw1CkqoAgRNimG2TvOyUXE7
	 kWXxl7/5pP0kXIcSGnTczStMSWlKg5k6+he7iZZF7DnstCyAFgdqS5Ay7VhH+g18fm
	 u6gSIv4grx0HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96025E9270E
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176683823358.25032.1110829802690284382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54da994053660de147008c39b572f315b9b5f9597897a879039417cbc2f05e48
Date: Sat, 27 Dec 2025 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766838233
