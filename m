Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B429AD4B
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 02:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741401535; cv=none; b=f/3YHah8AZ/+tRW2G3wpdJfrWkHfttJs2gDwwvclFMMgXYv2Zt1xwmLOYt2cmRCobei0pZzRl8sScNtgAcoT5/ljEDWFWQW7i0ZJ9IbPOACBUOqdq5nqgsKPHAShABWgGP1Ick5EgvI7ZN6CpZmdhjmrcrmIymT/351HZpVAbZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741401535; c=relaxed/simple;
	bh=PO7dX8vfQBhwu/vYA4HeZD7wcybhh0PdSlr28i4+Q98=;
	h=To:Subject:From:Message-Id:Date; b=glYqOimcghHlNFWjn4aXeYk1+Pm6DphgGG5n/JHrH5L1rxrUMDVZ5BiQ/P7946CYweBSMh8EIcHS+IwNbBDH54iamOlXcwEd8A0E9cMElF6UzWBDhssOcRObulUGJxhN2fA3WdRZIKJhX3jl7OI9kxosHC4t6z3tjCI2HSXZ2gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CczuyTkr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CczuyTkr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B50D3C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 02:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741401533;
	bh=PO7dX8vfQBhwu/vYA4HeZD7wcybhh0PdSlr28i4+Q98=;
	h=To:Subject:From:Date:From;
	b=CczuyTkrFvkkLvJY3xJnSN0J3dxQWWzcNjbXBzic2K4GWeEyu4Kz7OhIwqTTF23M+
	 qu3sRF0JeKg9rGn+SHB9AS9gewaxxmdqmzOKQcORkaYlTP8Wpv0lRii7uYUx7KmbVL
	 Pb1oFVzgiNAjM7IzNFecBomd9Wll4AElwrfb8aoGKpgjMxyj3W2oMyjUUKYwrTYXfw
	 HWjPNxuI8n3rvOlu56zVX1tRwumjDrK1uTzFjGMDWQAznloDLklZmaMcwC8MofOxRE
	 DF9Zq8/fcBDSNep5e/18Kkl930DJHZGnYL/XGFTcGnH4W3IkZj/jWb0OYownPtp9Sf
	 CC5E5ITLnpIKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A99AC282DE
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 02:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174140153362.13496.12552052299946711273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6674f64144b3630580eb3e98765195483079a1e2380fa0e0dd78ca877aff947a
Date: Sat, 08 Mar 2025 02:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741401533
