Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2190E2E11AE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749859194; cv=none; b=Jlzxj/+0D9+KxEBRR5pO2/KfjU+JAZPXNXA71DT+YxrvpLmC4y0+MNA5ugb691effg46HjCojZO4Y7Le9DU3Qwlg+KRENnFlSbFHeULMYl6YFKJJcsOi0yIxPqtmNsL3AA6AKb8a0zCLhNHqmVVpIU7zBdrtdeMqJQN72BFzZQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749859194; c=relaxed/simple;
	bh=pIKaIwHoBCVfXzJasazvYt2Bk4TA5N9/6nABpLYi14o=;
	h=To:Subject:From:Message-Id:Date; b=fje1y6OQgOIrix+C7607zYFBlYrJscyHQy9Z4o2Aii/S2GhA1Sau6agr9OfCZxPA5j2qNpLbaaAyOqn9F4juvkkj0JtiJTgSphK9p7vWlNR8h1uw/FJAhR2Uc0qc/fSLYKWnH/RxAxsBDTrJ2OFNiOfIIa3DcN2F484oMGZ/YT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzR0EfcE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzR0EfcE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA81C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749859193;
	bh=pIKaIwHoBCVfXzJasazvYt2Bk4TA5N9/6nABpLYi14o=;
	h=To:Subject:From:Date:From;
	b=nzR0EfcEvWf0SEwZSzAV/hAeg9G4/cH0Hsw0z638JHjFzI8W7ALcTjl6uRSy/stQN
	 SYy1hsZOmGMEBce0wk+Gy4GPAJ705TOH11qBT9uAqu33frstMU+6ji1bGJ6GMsUHUV
	 MY16CbVRU7F4d1/FIcIQPTKIsSUWkUey2R9+mLzVR3wYVY/j9QvnLAHsC0SD/uSimo
	 hC5iwEByXQsOz5kuPWlLOwjWDEQZ+yfqqgEtNLC4zRqJjIRAYM6c1EEFRrYYIZCzPm
	 uRRxtCBJNJ2rf9Oj05LUEcAq0GcZ77fknaszuKHd+yXIFVxvKlV9rsg6n3POUdqItg
	 ir/yzkkqfXWuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FE0C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174985919357.15475.4672906609765777214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 681978b8aa9628fe9493155f317167b6f603b132a019701f248295b5b8c8252c
Date: Fri, 13 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749859193
