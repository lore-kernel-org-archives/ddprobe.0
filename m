Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9E815ADA8
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 02:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716949463; cv=none; b=QeD3maTrkFUruZXbqpUSV7EDv2f1Nf+9dMwb8tOnCtEUd9L/z4bJrbXIgKlnppVlCg7YUAq/kCUMcIqlh6Lwv+8arKLjTsPJpWpfbzQOQ7Qqg2tzD4GC2saaEV9odezjGqc0+X3mIYBIt8OvosauLXKtqam5yY9jjsDyG4osqUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716949463; c=relaxed/simple;
	bh=NF/jGJNSW1cpQNeupF4j+N1sYNfXY6xuKuKif1hTjzY=;
	h=To:Subject:From:Message-Id:Date; b=X5O7y9ebTUxFnCe31stziA/NE8y8G1flIXGb0YE8aZDpWLQq7aghOHB8bgTU6BtPJD7WyQVFdIizB1+9rVfQyfdCEdCEbT7w4Jhq6E3hlQfC9w1aKawKBMACeuEUQxHUNUP3pDzwzF6GeVCoeIqHJWQyCyatEa9EairMU32fZhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5QJjLGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5QJjLGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D476DC3277B
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 02:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716949462;
	bh=NF/jGJNSW1cpQNeupF4j+N1sYNfXY6xuKuKif1hTjzY=;
	h=To:Subject:From:Date:From;
	b=i5QJjLGWsJlcBXOoeIZ7G4/umoE/YM+Hf/ZZ/ZTzdUuYOjpA7z/WpaspPrATZT8Tc
	 ccVKoG92rPP+XLnWE2SBIwStHXJJEvkhlW8Pw3b9r/LfuxNpoiuSIsqD+gUpaijRLD
	 gtaxd0acVJ9d/BWP1kc6QYoRd+lgTYQpuh1pfqJikpAY3i2WjvADKrJB4Ztv+LKWOT
	 a6MGjou1bMvUGpe0AaiOrZdV9UozsFo1FtU5sJS1T4jSYELmQhfDPJ64g0B2ALla82
	 9Pg5TcK64Tt5ePYNAnOzKKvBh7BJzjyPToqfmMnrwoPom7sIwMvd9gX3U76wdlVJpF
	 m9nPvkP50ijtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0FCAC25B78
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 02:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171694946278.18643.1750415762031841308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a68894e80b57de0d347291152b41c41c2a083cc604e2431d4606fe856665e337
Date: Wed, 29 May 2024 02:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716949462
