Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433A21C3C08
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754149794; cv=none; b=oH82cEObalNFHykuqFk7Lc01Da5mTCvuKtwSe15lJukQiiUbFdJg2GvwX0Vi1FTtodKkVkpSbgwW4/k6A4j8KGBw8MnDcVZSqz1cv7BqhOciz4Q6FDBYf4SHwUW8IuY205u9FjN2V5gJ1OVOMP/SB6zVUL1VLfUf+C3fCAupSOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754149794; c=relaxed/simple;
	bh=sSz4BZvpAOS6B1rjnpfx3UUGDothmrHurmYSfHixSEU=;
	h=To:Subject:From:Message-Id:Date; b=IlfR8YqtjeTlXr5uRiDww4WZSN7s4bZmreooWTBXVXujaSw1fg5l9qFp5Vs6NGkyzLHF+ph+L0bM2Ipt4XmpY26aFefRVVS6Vr+S12v1svryUMYL/JHgt5mAw/oAifoNCh+EoqGNySmToxSR/2J36oQ+37dE/pu+TqeBFTINvMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibZCROs+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibZCROs+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50FCC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754149793;
	bh=sSz4BZvpAOS6B1rjnpfx3UUGDothmrHurmYSfHixSEU=;
	h=To:Subject:From:Date:From;
	b=ibZCROs+4vS5NPnafr//LLxAwJAL+Y9DFj4fBsKEbqDrwDbM92jAipRTzjgBLHH7U
	 G4I7rRXxzvaEFmJaiYTBAumn0HOAT8XxkctvI7BdCxUP3fsD7RsNOYnl8b6be3cOJp
	 /oYC18Hh4Vo1hiVTOSNXqAsnJ0FGstmEW5OcHZP/wE9SRo4JULC8Uy7fKSLVh0Fa44
	 b9aRPv8uCLgJB4Be7rZXEbXR6s3uY7Is7gfpK9dUEsTCOXWBJ3f4PVVr/PoLDjrtrt
	 FV2PN1TmhRZzOoaBIoQgEKQIdrzSizxiyaS2ty05Fnf35aPTRPjhYSIkXGJbX5zwuH
	 aZXr8Kd+HK5ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EA4C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175414979357.30553.10701543457411411766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b15b40658e01986004cd3b8038114ee398dbe7a47c3185bc62cb70234e9533e0
Date: Sat, 02 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754149793
