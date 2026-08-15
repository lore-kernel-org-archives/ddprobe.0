Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6D1286425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786773634; cv=none; b=JagrxBijYfebeyaC5j3mUX+w37Nhq3gieEmZJ/baM+IuYjCVFqqI5RGLcWr9D+s3WDsfLsCxWrC0enqTBf0ViR+xS6U82EvJ23i6A1F5RYdMucpq/UdkiGqrjcS0/HqEPe6oap2NTahykkyLyXWu6F8HkVzmEcxKN1Oh6xbD3V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786773634; c=relaxed/simple;
	bh=cysGMyGcRkcnHZKHC9fk7C9l8fkK5SUOge3nAaaUJ5E=;
	h=To:Subject:From:Message-Id:Date; b=b6Qpg/XMVsLgReqJTgwSZlvu5hhMxGab/clcLAYmpE64nCwZLC1B3Qv3hba83CwhYpi6ortdNBt3/WMdhdT98bTf9XQGOoCV/Yl1uSa36YFN17YYXerSRnVKB9PLAWB7WBKotPhNLC2SPmvrKyc9dk3O8QC4U1QrhSuqy92app4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8JG6NJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8JG6NJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D914FC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786773633;
	bh=cysGMyGcRkcnHZKHC9fk7C9l8fkK5SUOge3nAaaUJ5E=;
	h=To:Subject:From:Date:From;
	b=d8JG6NJg510J2W6aow9Iyth+G05//cOfv0dY1qkfmqR1f+iA4usp7UGb1POCEkoCq
	 RCFDbKnRUNE5o+Ajf+dm2cHBzYHJQJi/qR0y7U2hdx74JctlLOg91Q8sUIZXkIa+by
	 HGxuzb0EUJHpdXjb++fJ1Q7kcC7o1DC6hU+9d3j8S25+G5oaxfxrwplRQnOhbu17sP
	 UUssv0DP1GzyHUZJkjhYs/JLK4pGLNWtWffBpvP7HOvjZ51/7fZbJw40KAs3lRrCw8
	 cigrVLFJp593J3Zq//R74eI67dLlqXabMjfmiuFsor5QSIwRPCQ1EMr3Lrlxqudlpd
	 LjpJ6Zc4uznUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A96C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178677363369.9910.7977428867432668580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b88d852d1d024d62faca825130bc1ded7a8cb422eae9a96a9b62daf61f84bb
Date: Sat, 15 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786773633
