Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3018F1CF2B6
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727886354; cv=none; b=lokxq8oZfWycnnYgA4V2dbFCVBZhbIXjCJ0h3Bd8UMQYYGV5J7GyV2MUjGfMUDTpUAE/xBYZaLgFyboWaWW5Fqupz8gKYe6gi6RNbo60D5YXNr0QaGZL9oAagPF4h0JpFp4GxprS7YoJiQG3q6T+89XKCiJDAkTVZf5jJIEa9UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727886354; c=relaxed/simple;
	bh=v0bhL/Xcx+sqXH1CHak+vQmH9QI3Itv7Rsdglk95L1k=;
	h=To:Subject:From:Message-Id:Date; b=h4W3p5Hi5oQPB6t0F9E54+GUwwkH7mAEPi/qjyBg+1vc8tVgmN4T1C48OH9ib2yVXT5Sf9O70JgWZGpvEqWFkyVYYH70q/CtPGYPJhgvhFU8oSstYhNbDJUVVY5CkNWCkZANucw8AATxR/DILIgAU/c27N2VxbupOv8vEyY2C98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BILHMkj/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BILHMkj/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09AFC4CECE
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727886353;
	bh=v0bhL/Xcx+sqXH1CHak+vQmH9QI3Itv7Rsdglk95L1k=;
	h=To:Subject:From:Date:From;
	b=BILHMkj/E9BHiIMbQdclIao6Rb/JND4a9RmF3QfcX3OXxkD1kklzGeWSmFEOteLFU
	 kSDkJvExU2JwnyUkq1NwYP8N2lC+qSFC7FwM5YuFwHldCgmmbBcF3lIBW4DQL5CNNz
	 wO/D5ZXCFW1yz6WOz6y20W7SWnNtsUFcQeOIe+tphFWyDqwaFp2SEDh6dCi+QzTfq+
	 ouIPz9/k1PLqjFvQMM9qbxC5CbikN6tdMRby7f6Il+9jE806b9+y/njdlJzRn84oI6
	 ZY32uSS4sIkwLxYDFyQLw2FFzGINCYX788Ycane2wcnBCZA5/muwJWv1Wtm+adVetb
	 64UVsKQW4ggaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC8CCF6D3C
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172788635361.24990.10614596842777155060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b81014a676abae75366868354001f1068cad213f07960edd56753432e5b5678f
Date: Wed, 02 Oct 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727886353
