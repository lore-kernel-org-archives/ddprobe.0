Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D044C98
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759222794; cv=none; b=eDIxZRSK5oeNM5z4XIRrhcgAgDx2nA6bpgSDM6bi1MxsCsQe2UE4BlE4epXdLA4V8ntM3T8spirjdVWzQ81O4YhIpHbKk/ka1aEe1jvkzxU/fpbPQuhj8Jcyi4wDSkAmaYHyHe6/x9eVnFuBPaOpsHdcutVkexGenNU3JKlhHkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759222794; c=relaxed/simple;
	bh=Q2TQkcpDe6IxJdzmVTxb0mm3NWJwZrzP1kWGbLGdIqQ=;
	h=To:Subject:From:Message-Id:Date; b=Sq1hYSemzXMHfvpeW0Kk7gQmwurFf+4sD/MFkOYRciNNZnTELL7bA8/z2y3CQDjfH+8PPKAGYl2RA02YxUEJP2oGj1APsLn8w6zICDe3T5ludhu0LGzsaW5C3ciSKxu+ZCegy+VUlyt65w83iUsmitV9xZ43UfFIL+/9p3Jf9p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gO5EBcK+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gO5EBcK+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21FCC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759222793;
	bh=Q2TQkcpDe6IxJdzmVTxb0mm3NWJwZrzP1kWGbLGdIqQ=;
	h=To:Subject:From:Date:From;
	b=gO5EBcK+A9QFgCp3VO9cQjH7x2S9LzfZRByHWlqZadd1i3CksyaPIocVFDm054aDw
	 ovl7L73lBZyqPuxK/NJ5JfaBhYvmDaHMkXBaaMHkGahvrhqOGR7tW5bl36xj2ZZ8uy
	 jnlRU+sU0rVfxWI8S2OhYEe+7cvrNb8cn5vwV/HThcJAJ567GrqjGimKTac1jSvRH+
	 Ts3tW/YDkPhYM0LKWhjAKAwTV8U7KyD+oFvFPMcd9CHIpYTUnOmrANI5Qfq6sgdl2n
	 ESpl/358Y79fGYoVozk62W3P5axjVCHYzE5xAwUKMQgrAdzZTCz1D5k1bcSeiQy4+v
	 LOnKdFHoAqdmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904F9CAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175922279358.18108.4815794306725239789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 712749a3e0771aece638b25b11a3f28c3c2faabd4342fc6856ebd7a774e5a827
Date: Tue, 30 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759222793
