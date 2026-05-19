Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296D93403E9
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 14:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779200434; cv=none; b=jT5E2oHg+2vPvUsC8kifLQLst7FgMtEU0VTAVT8oXNQ5/tihnr0OFGAHYzB++cDVGlvqLTJjPYXG71jsrQLtC2pGUwHC2vA2njzTFAFqtstsXkyJGg02vPZvgWFIahgHWfbRP9RTkbtTKkL6KnZM6nTpWH3GhfCHhf30K92Vd4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779200434; c=relaxed/simple;
	bh=1IAu0fCxuaXVgfAWVN9j+Vga9fz9h1GMICsBfnuTqv0=;
	h=To:Subject:From:Message-Id:Date; b=nAaKiv3e4AFm62dWYXcbFMeBa7FQQWwrZy1Tkgo0H7SaefKnsgDcDWJjAgQ9533igVzLfTZ1mhMmjtAphju2i9nF8mduhh2TIKtDSr8GcTn5fHGJARWk74NoYzNZh5abeLhdlZWmuvbkKYSBzEdFOM27PFI3kGI0MsszojWHS84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnZjqmS9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnZjqmS9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE93BC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779200433;
	bh=1IAu0fCxuaXVgfAWVN9j+Vga9fz9h1GMICsBfnuTqv0=;
	h=To:Subject:From:Date:From;
	b=NnZjqmS9DtZxgag6iaxbUtO2UUhFyGUuLkm8/UQxs2KlAG2LyMO4/k/vXpZ7Hk1+6
	 S2dV9LqesVEiApGGQAKB+gEaP8clF1X4U4VeXemFhbGBdhf+TrKqXXRmqZlWN/cdOE
	 sikQn21rcnSgSYLpNYCWteniZ1d0KnNMdw70HZ3Z9M5l27qYgDtZ/4jVZYvgVpHNZS
	 2wNiczWh+7EDFtooXkDZpkM+ldnTK45IP6DrAYG6Cx2HwqQcz3ZnO1+SHdkqsWag01
	 11Rvxt/NNUnMPBerlCIm2PLLSMIOYCIxU0O4PSBUjxiye6oEthSu9p9b3uzaVp+IZs
	 8yhJ7NhFUZzLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB61CD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177920043368.8636.1320319481651342124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38214210364b7e0cdefd75935c96f9b67f702634f086b65133efca2bf4af13da
Date: Tue, 19 May 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779200433
