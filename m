Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236E6205E2F
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750231794; cv=none; b=SGImYmkkUZAUyoQ4KcUvhjJMfjH0KOCpOPNW3tfEg95EHcuxfn9FobR//tetLpIZWKiQw3hRg+W/Xl7uacfwCou17Nw/9Azb1iWxxdp8eBSCd1aVaqOXKvaWd4QerYPtGqi9QpBbDY+28o/Gk0OlMuu3AFYaq9wXJ0XFTV8hnKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750231794; c=relaxed/simple;
	bh=j8Rs+aRKOhIW0IAul22PMw3FEYRdKOGNmOIvfQDzqP4=;
	h=To:Subject:From:Message-Id:Date; b=tBY/+Xj/XY/Sq1FGM29PqYXdOL8Zg7kn5WbckHkaciEpFLE4/23ayC8SfThnuBRV4EdeBQ0UzazCKUd/Us046cbvBaSQ8c3MQEpTv1F3fMD9yFxJRTsIHpsnuYxOJWaIMzHu2ZyoRTaYmFQIjVqnkoKaODFyBJKvloJDF9KjlSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FX6hskfr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FX6hskfr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DEFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750231793;
	bh=j8Rs+aRKOhIW0IAul22PMw3FEYRdKOGNmOIvfQDzqP4=;
	h=To:Subject:From:Date:From;
	b=FX6hskfrGyn/5ZP989HkUicXs6eIIO6TIXL5AXiN47IM0nSoH+perXAPLEW7a7cgZ
	 23A6aDkAs9pUKALKvxuNUydZpyCxME/9ivwBrR5+SbiQLwdkjQn2GkoQ7awg3fSNfa
	 Jij14+fBTmK/Wp9akXpU6gv4bQd4b5sRhF0UgzQbTPGB9jHJJMFNt+GSSFuVWhWGio
	 ua38KVvmyZiv4dW/YGlbOSmmaoRiRBOLuVcdZb00BsK2UPGlW59d3mxG8l0x9/iHX8
	 BXfYGRU3W6RuZibYl0Bf3o4bBFmf5i5JmJm9qrIBwzDS5lIFhXnMQ3NkWFUFXe78oX
	 TlhLWDnxThncA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7ECC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175023179357.554.16515510703713459391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36321d0edae669fc90eae74a2da14a8fdcd227392728723c8cf2207f59bd8165
Date: Wed, 18 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750231793
