Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC722770E
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723921554; cv=none; b=ujcT5TeeGeOFu/JvxzQ57ILqTctdcNUBaq8Yy0pkJKvKFaNv4QRAFsaU7slu80dv5lhxkfwKUMo0/Vvn18CdT9q78pyxhjsNiu2gnYFJ0FYOdWsnzlXoemIyQp7t2H2ymhMmz9zKiOlKBLXAh6jSpXPFfYWgK+pI7byeXn34Zag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723921554; c=relaxed/simple;
	bh=2xZT2tTwDec8S7KCM3M/WcAXb6vV9OaNMoKLfm5nIy8=;
	h=To:Subject:From:Message-Id:Date; b=Nhmuc2Zckmk0X7rdfb6B3lAhD49Wi3Xdw0S9O9Q3a7PV8zP/LvnkpHEYAM/qycpupPDvwIYR2VYDMHEDqZHKCQdDMGtBJ7Q9/4uBTB9+tT890lVnHVb4Ieq3oUhl1O29BEkH5laDt8lPkFVslOLydL/+GaQgwLlzMIImOpHvtuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4/4tYyQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4/4tYyQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79D3C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723921553;
	bh=2xZT2tTwDec8S7KCM3M/WcAXb6vV9OaNMoKLfm5nIy8=;
	h=To:Subject:From:Date:From;
	b=W4/4tYyQ9OdtNgHOrsPXgP6Y9LmqcwX7AA7QzcJlMkF4bEV1s0As+v2m/77rOJLB9
	 6a2sXlhvdPQR5UzvzL9YfRD3PId+VISrueO5dVLkLsSfaBRjTjQ5gVW2lz3m89Z0OW
	 QI/Bxr3khegXUcY/7/MWSMIUyO6nauQ2a/sz4UA1i890h0Q7ytAp+z5pJ4KMssSZcR
	 QSoU0P/SCqKtpF7oeFuo4Cl9kSLoMZlgIVeJctt5jM5JCNvj3pt+brph5b8U6K086s
	 15ps5vMd7K9q3SomKVz2wVLd5nO/z2B0fg1x8x27jMG1NSVF2WRrcx6CYCrrJLRmal
	 KSA+ahe3XEiyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91581C5320E
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172392155358.798.16204611861223423094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 555ebbe2b8923ed4d5f089246e69bf907d493e45b087617b793aab168aad33ae
Date: Sat, 17 Aug 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723921553
