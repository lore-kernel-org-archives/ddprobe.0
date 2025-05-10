Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BE81428E7
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746904794; cv=none; b=NocwBDemQgr/67COsGR6xY4X6CgIWRuZqCbMMuVmUuc+/Ih/bFvNan4GxPrqbdDZ1h6/WZrA9LahFIND4cyCzS3cC4FGY61Q+wEvOU6n79Xx0yUtBkEIRT7q6TBTU9p4IE1f2JHPdGd4c/56Y032hTtigRT8YDl0sJ8GtsZOeOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746904794; c=relaxed/simple;
	bh=kMvqiiXzKhK7TySHTXBdNO2RIP+qGBPXz3rF6K4P27w=;
	h=To:Subject:From:Message-Id:Date; b=Ns+RnUOrqM+Etnm2oxZNocOlFoXs2Kwj84ISylWKKm3dYRJbVfYuAmEccd9ejJpRUQiuNrSHwhBuMKqN53Km67K9eDkU2T4J+vDsrNr22jMXifz2uwwnVUo8M9P0CXoZ2ENX0JoDFmJ+z6dBN7fYMzmP1+3iqyJ0++Vm+Q8I/Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcEMVf9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcEMVf9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A107CC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746904793;
	bh=kMvqiiXzKhK7TySHTXBdNO2RIP+qGBPXz3rF6K4P27w=;
	h=To:Subject:From:Date:From;
	b=KcEMVf9xt+a5TqbMFfxgAsaEjHSW9Ev8+jDJ6NcSoCEOfY9tJK1vxCWtaEA8L6GBm
	 MwtOmL2OQp34EzEk40RFx1+MZ1E0QwPrIHZWAKK8x2r7XJ9yn9VjIc2AO0nC7dW8T7
	 5y3kKD/m13BgpVZv82lfaZFIR2N+ktOYqRqqHrho7zSaFoYJylLdNNvUhHEZXdbwk9
	 T2o1KBkGtx4TCH4RA2i4TnGE/zJJvjXNtggMLv35na29xlZfRdDNRNW4PX9WuDtREG
	 CCBfIouSLMqVbskUaQm4MHpxbcVXkKXb1OTO0qv3olszfw76/4/2HoCQZ4rqzQvPAw
	 dnXN3AE/LSukg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB1FC3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174690479357.17239.3193957359089387467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c60ba0dc1eeca94d8ccb12dce983dea058dc75e6db0ec52e0bfdbaf882fdf094
Date: Sat, 10 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746904793
