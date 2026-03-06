Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097C84A0C
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772774694; cv=none; b=NRPQGFYUAgSFgJibAZNgY7fF165pHLDWMgk5cg+qmnjfSR2uLDRqpVT4dLkvOXltdI0u5UvkTGODoV3sFo2gcn88cVzuht8Yj3V/nQxdVVaGvLbQdisIzTDkrO8p+wdeQRt0DIGnWgVhWOrp7fhWgVAsp6qylebKsz5bLlqsvAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772774694; c=relaxed/simple;
	bh=FESongZOVO6OHRMg/ovPlRfRbRSZ2pWM4DZn5DistjQ=;
	h=To:Subject:From:Message-Id:Date; b=qjNKAexh7tunVGtpyaWsNzhJJwm/4FhreDIoXITc9Lk9IZtSqQjjs4h+LqNzamV+LgANbPmdbP1UpAc8Za+RBPeu+EYbTaqhb0K2KSC3bQjPCPomvPVSDJBwGM40lBo82klI3RQmnBn62fEBa0S3Cc4/4sYkSn+UhVZVhMQ+U+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlAcXKci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlAcXKci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B8AC19422
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772774693;
	bh=FESongZOVO6OHRMg/ovPlRfRbRSZ2pWM4DZn5DistjQ=;
	h=To:Subject:From:Date:From;
	b=OlAcXKciAxLZZDXz/ed2qzWJISVDkHv9xxrokuvQUGbaBnDy4xsd2n5v9/yS7Mg7I
	 97DAQ6At5hGV7NFBnw359kgK2U3F2NNjSjv/3GudozTq+7n2HuMpoSpHqOMIf/nTIF
	 EPmG5lZF0X0UgkQ8mrFTFThPAJXKW9hsEDmak5rEDb7jorF+F1DrBZo2CZSB4J9hyI
	 vItEZ/nqeEICnpv3Gz7nWD4fyNaMVJEBR4S9XQwHptqpK88E8oOgV2mdWVUr+rZrEC
	 5ZwoNdVVYp1+xSB7ez8WnlkypsP7iE7qyTgqrkMMQHKTSOay99z/2BjcPT8EuhMgEf
	 Vc+j7ydeT+6Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930D2F513F7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177277469359.23032.8450069944476247326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6394413722df2b49d112ea12afce4d303c4f44ded41f01783addd14b96c3763a
Date: Fri, 06 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772774693
