Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE297E9
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752722394; cv=none; b=M0WlJVvqAzOYgOQ1TFpBCTe8+nda1wSg5i9C2u6oq8OILxXp2Oz8ZcwVMWQKwFDCOy3E1ACfAoFpC8nYupbo9218gmDDmLt/OQjg1Z+U7iW5gkAL06cq/IpKU9AWYZGDzeYqRt+qU5x1r1w12/W6gU5iwL59byEAOMSngJqtekk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752722394; c=relaxed/simple;
	bh=F9RfbSlTELEzxn83pF2qSuM+4aNFu7DmKb4aMowQFjg=;
	h=To:Subject:From:Message-Id:Date; b=lFb1Nsmk36AIp1PZpffNzSizONjqYupV4bN/KiVO+ASUFlalZi+/XFe1mfP6skyg415e0aYEnlLv+kYOgg9ELsXbgbSumSrh4WD92ZHj/WTpKLvskgsq+BUOfwWaM3dJ5cd/Iyx2Z4f0jLsJhmVPU9EshvPtSxVyIsPxcEn9EzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DA4qt4bR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DA4qt4bR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A467EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752722393;
	bh=F9RfbSlTELEzxn83pF2qSuM+4aNFu7DmKb4aMowQFjg=;
	h=To:Subject:From:Date:From;
	b=DA4qt4bRQG5Vgyh6CVpQC5/QYjytd7LJFANilKPOkbxr8WQrwt7e2aSmP8SlFpn8T
	 rYqVil5ItPl4DzXdNJP9yJ/5rMsNSiMP7K8/I+gg81Lb/H8OkQud+5cTjmMYw5rGIw
	 jB3eEg3Wz8YPnpZ8JJJA3/fQNHISlfiL6pAB3BiWxB+grC5dZ8LM+9nzOXE+Yf62M+
	 P7ZrSuaNMl//z4+y0096grpKb/BFZ9K9RMzQ4/AeUY/t0tDS681evHIA+kunnIHaVZ
	 JsWXatTSIA+OcUmBheJbUfrwnUERQomdZSO5GGNfh0YgsOVurEbpGsjf3P+qeVF142
	 o1TqSkA9ybrjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F1BC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175272239358.27852.10656684691685966264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db52b24585ba3b27f73555f804de130fc07948bb35fff2e01c818cf7f92bad7d
Date: Thu, 17 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752722393
