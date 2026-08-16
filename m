Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512B831F98B
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786870834; cv=none; b=h5PiP5t5QLRE4gCiuP5guREvIRd1pc/Li1rLO+yJ6RS9/PDY8R3TXZJTyXTXFHjGTKcVuKvpfeXe3xKGyYLm6rKFCiUjqbGdB0unnV22Fq+oRqNgQH8E4wDXoCgDhLidKAlM0EtV/7eaW2e6RZ7hTKOZCTKhznnJOv1FqjGGYdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786870834; c=relaxed/simple;
	bh=XoNeEO2Era1mB4VWTLzov2DMIQ2ZKkxUvD9qKA/xefM=;
	h=To:Subject:From:Message-Id:Date; b=H08K4QYPEchQXhpa6jLRnLF8BK/QT4ge2NdVLggW+IQ16zEXThk7M94cAZCsJuIVSAgW3RNMoB+aK4nGigE4Ze9lZUBV00YAWltB9o2vuG+Miak7FuRXisLQ1m/mWteYE1fXya1zCo/4lzkrX0T/YOxMuN2qj/1FCdykuKLUnck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZ0FqoaE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZ0FqoaE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6054C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786870833;
	bh=XoNeEO2Era1mB4VWTLzov2DMIQ2ZKkxUvD9qKA/xefM=;
	h=To:Subject:From:Date:From;
	b=CZ0FqoaEPuGBwLxLRFxBOCCUaGeUATMs2GkvrmBBzyx85YVt8pnxSo+weY3D3JpY/
	 OsZBFzkbzwYZg3goRJ+G1yghzBfU2gMj2zvjHj0j3wZeo5ruMPeJVatQIdLA3v2t/V
	 jCZYUKLkUyCDpIwUX4mTsqnEim/F00BmUBQQxeJXFFiZOs/2UJhFBp77V7932/CM8I
	 8mAi/yLiNneONLIA6CGDetpniZ8d3dyvJyKzLcym7CCy4LHEQZ3M9nANt3EkMf8Sw7
	 +1/K/BpMzwyN4oOqvOqrABdrR0KXfepvx9wkf9W5JN1JUwWDyOgC6yNaf+unNfMKZL
	 jKXKpvyx2vXOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1392C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178687083368.7089.379183852964257934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfeab83edf604bad0c338fc2c4acf85f08a285ae0d04dfb1736ec3b9e77a727c
Date: Sun, 16 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786870833
