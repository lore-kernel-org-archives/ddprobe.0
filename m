Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E40AB1AA7A5
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728916554; cv=none; b=dmOxvCJNGA+7F+zj+HtDzAAPvY4HCYXM2791yHwyzlvSGkkEFAmqi4Bg27gPKX9GdJOdw8rDS157LFSRv0t75pTcQJleowYeJIXbvvOEAQSY/DZaFzMCBs9BMtEhKlfJZcOQwmfIXXQFhBQ+j8VIunmn9r4Hys2lKqs9hnBOIRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728916554; c=relaxed/simple;
	bh=2SIPv/kcU/7SsKu4ms4IsgE+kctcu98Yipp2eCWnrsM=;
	h=To:Subject:From:Message-Id:Date; b=OZ4oBmpzRk+R8WsZVNK+5kSeYnj0VGXSKdoMQRSiwC5Pqt+shcu6JFnrt/NJMMZG5z2XDbe0YhVhKRRVf+W/UJJW3PsloBne4XPpyXwVKOjU7qqlQemCH3Wl4psg1QUp6+yg5dod35ydtw/AFhgSt3TElBj1WTzgPX3wG4m32ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANU1PEB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANU1PEB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7F4C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728916553;
	bh=2SIPv/kcU/7SsKu4ms4IsgE+kctcu98Yipp2eCWnrsM=;
	h=To:Subject:From:Date:From;
	b=ANU1PEB6WCdMZJIOa8x71FURxe8JMm+WeYDdvEW8oQwiFFfsW7eyh3xFNbG2orQtJ
	 cfFFR6wC6Ajt/+Tl4sISPbZQ7nBUrdKDmjHQK1Puk29HDJPpBLN85iHOqnxWF5IKoF
	 N9zMGH8aYnOfVaPi6S/8+zPPYjLR6j9XuHQB7dvYIF4RfKsB5LIjZW4zWnx1PiBdD1
	 BWJxgoCwQHukQmcXDyIUk6l6bdX5n1cDMSK6LhlqaoUsxHMkpoLN/rqA2XjlmvzKQg
	 plPGMAmRfW8epmnU1yAibsL9bV6Lu30rSDfa5/zx4X7kihRtoNwbwotl+CgDd6KwZK
	 vzD6W/B8GRHsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3EDD16278
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172891655357.9364.16034950931044971457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a02197a43873bb76d8ec35df060b1a0737701da383215afbb06d21f70df198
Date: Mon, 14 Oct 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728916553
