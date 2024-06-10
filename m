Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497D23C30
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 12:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718021843; cv=none; b=nnhDtszovxGuSjTrGD22whdAFEcaYLztSHjHXlDywc4iGVyw7c9/uioeRhSbepwQFiTrz2OdStg3mfKBw4ybV0o7E77MHpA1P4F+MK/pZSGfOPSZ0rocpzwwB2r/iAkzQYbripW5C3mr/bqJm35kWiq8FWUZm2LMglsqQPpl5xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718021843; c=relaxed/simple;
	bh=EjiqwBBgPb3iF8IMW97TkHpll3q6tYEtzTO8XJ+/wYA=;
	h=To:Subject:From:Message-Id:Date; b=kMude4+Q9o4uQap/VUFoSiKxgprbQFBjXqJ6vAHAoVS2BrkfmogodgVrEAd4IjZX1ydK8qG2wn+9PYn4engokBhz8C6+/dxztIlTU29OyM7A4McABHEbMasxbKQuWXd/uxb7jbhg3IWxj7twNCOTOiOSV0M9bqNI2OMHgQJKlKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcvCiaTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcvCiaTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2714C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 12:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718021842;
	bh=EjiqwBBgPb3iF8IMW97TkHpll3q6tYEtzTO8XJ+/wYA=;
	h=To:Subject:From:Date:From;
	b=YcvCiaTIvSXR34zbb1HFXVHKQXjCxkjV8KS0cwgNTB2/KQIFlottUE+7E/crxX6Jh
	 TwkcadTOHhlIs4X81zXQVoINGy+eOYLyEUV8mJfhKBgPBNeoDRxtuCClYjwxz95gDG
	 BVE6H/Aid4FYgHNTBp2JOsSw81uElo/kSbyhVQzgIlAzUT7l7Uhk1tU6qoHD8rLv63
	 3pxp2OZdwEArZfhe9zn2IqF01gZSGVmSXP7n2qd+xfR1eO2p1osSdqZOd7DWl4LrBj
	 APooSpjrlH8UzCbMnlQ6QX8S9qRnbT31Ri7dOltTexvmSPC51a3664BXMKVBHYs5CW
	 fIwaOQMWy6jLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB19EC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 12:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171802184275.5173.17722944074185416568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16aaa9d3b915469be56abab095cee7b230a6a1ed2fd141e884705515d52da554
Date: Mon, 10 Jun 2024 12:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718021842
