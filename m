Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260D61F92E
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046994; cv=none; b=G72z9Yojk8KpUpARFbjcsJgpjl+/+BBpAXq0OSWye4DLEMGsrJkJI9vcFv94Murk04SWRScTGjxfW9vO99FIufu/xVPJiUT6EcBia3vUkTswXNlbxvY8Aa2EP/Vj67rx6LLh2dgnJVau7GFvtestpPCCHXR5TaS41keG+aq+srY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046994; c=relaxed/simple;
	bh=2xG5gHBJrXGa4Ig/nbW04Vs3bpUReDwDtYCGT4cQHwQ=;
	h=To:Subject:From:Message-Id:Date; b=nHGg2BLRKtOmYkD2Ts6DxsUAc9zy7nAkdTku1ufxbtg28ns6gU1oJH7Io6Q8graOdRpd4NpoINPqUhKCDhZ6F+qdVGI9V+OOcKrfe1BXMKBByW1nKtUo+afRMfL/szljIRZ98aSl+cFp8hD7AmXltjkHqtgbmXgHVJDJH+GYv/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7JfU3Zv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7JfU3Zv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D94C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756046993;
	bh=2xG5gHBJrXGa4Ig/nbW04Vs3bpUReDwDtYCGT4cQHwQ=;
	h=To:Subject:From:Date:From;
	b=K7JfU3ZvjvAd2m4TK6Hf/jadGw4ZyPo8vrNZv4Fk/J4VR/eLL7UxOhThsxY5nCqbW
	 4+VCiOaJb+xrrHPdQCRAt47NMIhJ0G/+E0KqZqBsbbeU0p1vadEefeMx79IkTVd5jj
	 m/GF8uqALsRSlXim5fWuFd3tLD3uV5vKooBTCdr9psrzoGGYpNMu0/V2/+vqxyBrQF
	 DHsCbU8SfATIbyKSjJ51y/JBZGcnRo6hpco5WFdO1H7g4MLaF81iWBeN2KXzDI17nA
	 qpGs2/7IbWxJhUbYdIU29dsaEQ6AXjBTvpBt4UCg48JTqkbXhJOcxEo88jDiR9O63a
	 weEcOWNQIYR7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9375CCA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175604699358.22141.1357996507879677479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcecfe7e26922e913c5fa9ae0c711890860aa82dd4bdcc63c47091b49abb5166
Date: Sun, 24 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756046993
