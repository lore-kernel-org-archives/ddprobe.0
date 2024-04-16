Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3178D8468
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 05:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713244763; cv=none; b=T1dpdibd9niLBBd5qfNifDNDrDwpsgdE02QUyjgaMGc8lzQrL2pTIAF/pCylZ+U5sBFMT2heEf2nBoS4haYf/C4QxnZpdTZg6H8PD8qHJcVgNekiA3CdEys+hJYZuas8nHYnSXsNeKi4BfCcuumBDPJkF7txh58OJDMCzZ1Efk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713244763; c=relaxed/simple;
	bh=N9XPGVnrb1M5O8gwqoWfeqDc5ycMh3RwLPr6HZ6RUow=;
	h=To:Subject:From:Message-Id:Date; b=tJGCJ2UTzywxEtYfEMhzt8XLpbeiiM/qZUgYXPz18a4UIPYRwha0aUQTd0JzRUr2Kmh5NqfnxmNa1OjkXsne/2dVVHxGZ71oqK+2bTigHduXUc++Dkftw7g8m5P9y5ntA0D5IlDA0BEpHfSSfu6V9TFAyNDvp1XPrXAQ/RuGxTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmBOg9DM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmBOg9DM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF57EC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 05:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713244762;
	bh=N9XPGVnrb1M5O8gwqoWfeqDc5ycMh3RwLPr6HZ6RUow=;
	h=To:Subject:From:Date:From;
	b=YmBOg9DMQzSetHrgBX8QxVN6YJLsnR9n9icZ3lv9XYLZaJRc8IzcxiKYVngdiOAGc
	 Alcg0/Z8jYXIFqrDo4/aJTxeNzJNwQna2Ld7jaqCOHgez+pP3RgtFqiROt4K5pr/Qm
	 KakKSFgByScvyOFg2u1jjfSX4uj07aq9Zl+IJDrMVTJ/w18h60hDoDYX0B6/2j+lpY
	 1SJHuMY2QyXP+VuAkjQTg+E/yuVJDRuH36IfXcZ9qZv6DwTo1EJzbhNnt9kB69mRIK
	 oiPNpeW2hdROUL0pS7moz1BWMeOlZnkVzWe34bOMf0QZGzPb8C6enzahdolTHFLmN8
	 cPR0puBUin6YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA996C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 05:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171324476275.26601.10568998845841147585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ba717363ca749cbc6a92db101f8deec40722e3f1d2e071515c0148564814171
Date: Tue, 16 Apr 2024 05:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713244762
