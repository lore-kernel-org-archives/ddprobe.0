Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724332EC56E
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787170834; cv=none; b=GvK/zOZTrr2x4aoG6vxmz/JwE2SiY+dm3Bf1dAZBvGrps1LvPXxwbO/UghRlJzGTwea/8jwNnoLExF7xtnmE7X13u1tmnhzbVZr+0fbF00yeQZpdnDH1XtBzzT5f47B8P5Rdp/lYgVLRXkUJyX2hUE0Ph6jvZPYJ7TAWnI2TV2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787170834; c=relaxed/simple;
	bh=oAO0I63YHV9peU0N+oYnvIn4gDTItrV5qCpx8QNW/n0=;
	h=To:Subject:From:Message-Id:Date; b=Yo+zpednWj2Mq61anvFfHc6lBSGee3Yhxh2fYrr2LuJBujwLk+28QQv9Z1r5w/1//hKpm/c3pNbG6sB0bYMnoIJ+/iVcvduMyHsaeTLMnQYfQQcP9mwoYDY0WW6vTUfurNIHLS29X7Wc6DXbHh3z5XBGxWbypvO9xrtThAGMW0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSZRRraT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSZRRraT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE98C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787170833;
	bh=oAO0I63YHV9peU0N+oYnvIn4gDTItrV5qCpx8QNW/n0=;
	h=To:Subject:From:Date:From;
	b=aSZRRraTLQqvtEocgMzJSX4g9Qbvo0Y+YDnY2WryXuy1toXO2kutjAdO2o//2tkUz
	 HtBFFF3IAsOw4GDKoIlh/BHzvrlXnzGsjDukhkDGZPayAjjIVHJ0xXlWP/VMPUSs25
	 Lz4uOw7r7m2ZW+iBCelvwsxec5i7Td4z1d1VoRewbzXb3lxljEsGKcYRyTRizl6S1T
	 D4L0hqJ8Fuchzj0jjsghUH4p3eLu90rnAMA+Gn3kfNeLiCcwF9vBpGLg3b8IZBTjD4
	 N/adRDUroqPseElKYrIB4HzY9OHAyuHr6NQ2Chf+jZQ7JAlDe+NT6qOZ77iuFeOzvt
	 UkUtD+sJp6TDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2112C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178717083371.9344.12251497576603061497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c6acfe4ab8bdcb718c906d70bf7c7a433216a69be1a07c2f6e00edd2c87099
Date: Wed, 19 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787170833
