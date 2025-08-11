Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9C22D12F5
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754912394; cv=none; b=q+BmrA7ye3ZdATP8E+4jOgeSyzptz7/04AcZtC9HXFZpRyX3lFJn24w+HNVDW2tWVqM6b5ODNu/rQgg+z0beQg/2gv+qygljdDW0yD3jh0dx3lwW7yHCyV8X3MVCjI10qwPm19wVdY1zTdzcMKzKTHVySkIDtJcMIK+bo66fjyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754912394; c=relaxed/simple;
	bh=aq4y2VlIKXA9qheVCWyTRdTzNaTGkXvbn9+LkYyu40Q=;
	h=To:Subject:From:Message-Id:Date; b=eYApEgsPHAvqp7IOPzP2n7Eav+t8pSD3M6tRZcuDGVlrqXEwwV4XbFtH1DFqpiDcZW/hbRoyM8cU+nbxsEu14QgFzVEdbyj1iArabYxeP+OdQ/GcAl8lnMc/iikq5+7EqnYac/zzpe4VpnWU7XfzMshW+Wy57792hrn2u4MJS+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRuLQfL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRuLQfL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E83CC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754912393;
	bh=aq4y2VlIKXA9qheVCWyTRdTzNaTGkXvbn9+LkYyu40Q=;
	h=To:Subject:From:Date:From;
	b=TRuLQfL0q57LhaP07M5YiOlVHzr++vl5qrAKPnuqlRyIoeabWeTAbeboOb7TUmukd
	 1xzIY/+Gf2y5gSpXVzC10JP+PmO21XEA7UMNg1lUT48AA1WJPCp7afqyj0yBRUjVxw
	 4y+832fLAhtDz6RmKU27YckgHugPxkijdGJSO63KkFOdnTBOGWuVL9JQ9Lihkv1cXj
	 vKAwYcj4ISP8tqNppn1aOXbGj4L4r0ecLRZUENgBd7FNWCFeC2JX9+5Xo72DwjdnXW
	 jAQX8lxmDjntPrg2BgzGyEGJxxprCMPOyyazLoyqooSCwFZNuP74P18ooPIfEKnZ6O
	 dsM7acddUDj1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED96C87FDB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175491239357.19047.2254820448272825796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c75e54448679386b3e93588bd598f109159d946e1b023aef5b8bbce800e0122
Date: Mon, 11 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754912393
