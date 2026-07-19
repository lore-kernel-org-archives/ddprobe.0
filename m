Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5761F35979
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 22:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784498914; cv=none; b=SBl5g8QRXBHvaepr7n9/rh+WdfyRhUlQEmRn5WgeWM8bUVFmPjF73WBJ/0XAagz3N2+YlrsjBYZJ5QxXVfVkJyx7RrGqczprXuVA8LvP4LiGxrU23bgU6jr07yX3vMiKgEMftDZOxoBZ05/A15M8yMd4m2PLEEEP5GrMHqtuP6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784498914; c=relaxed/simple;
	bh=7uiigpOWIJqBkTd11/12n0z3U19y8B+MxL9iZpetI1U=;
	h=To:Subject:From:Message-Id:Date; b=IkqQDNOkgRX/zi/+G8RfMJ+pIAic04s66hzU+lnghQB0SsnTNusAAHRYpjOqOuZg4tKITCMIoMJiK6UKfFNbRtcUX/2HbeFrImLnRX61tc58n/hTWfnxRoPCz/OxXMCSrcVNTxqFlHZ4dxcaoCPn7LOtiYSTTMe0tPcOp96xM3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1eW1eNz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1eW1eNz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2554C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784498913;
	bh=7uiigpOWIJqBkTd11/12n0z3U19y8B+MxL9iZpetI1U=;
	h=To:Subject:From:Date:From;
	b=s1eW1eNzPGCFvuTHx0B10ce7YEiNTPpQKQxRxnifbkH745V3Uz1Nt2tXBsUPPxY+g
	 qIqNB++1iNV2a47fybHk5XxOo3ROxLRfTnDmME6fXwZRhGYq2n0KPR94oE0lfS2Z12
	 h7aDZYWfFjn8DQ+ywQv+NJHke9UjCEEhKEJ1+s8R20TGC1/R7eGq9wDUtpAtY+9oek
	 NVkrcS0ex2qlFZGOFXIuOM5vMAWbwg8iGBE9ilCPZ8FCCDy/2r4+kMwctIZfQ3b/Ln
	 3Zha0f+Cai/DIWHme+GGa2Z+96av5YsgVvYULuGy5af8gHRlzsbsa71jXCZCSKPGWm
	 /Orq3kmB8NuPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5EE0C4451B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178449891370.17062.4569705953201939901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0afe94cdbe7899b7cd05fcdba666b86865ed03fd69490dcca0d1a626dd82cab0
Date: Sun, 19 Jul 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784498913
