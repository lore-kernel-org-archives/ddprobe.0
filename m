Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAF5C21D3D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774107893; cv=none; b=oFdQgf91BWYUFVuFU5I9gmoTgAjJH4VxLC+Vz+PzyDN2DRgdC8QQtPn+g6PivzBNI1lspJw4/MbDulLvY6WMCmrYqoiSLKA9iQZtEUIXlikFgpc4yodLumBxSpG8DdVZu7MGHF4Lcm4IKFAC9bCp/eJeDrrpN1cXDkW9UPc01vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774107893; c=relaxed/simple;
	bh=LN2XEKGIFRB9tqPdDns606pzUviEtoxrS4mQV0yVYag=;
	h=To:Subject:From:Message-Id:Date; b=IDPw1azhXuGh/jDGp6OwZNUqbe64bziFs0c/9tRmvJba55iHgd63vQ/W+x59SuZ4XZQWOYnIWgzSM1ghs2/NWoEYDF61Y6NU07RG6lYInWuPvc3XxfHaLxJeWHXXMf0UHtcGm81amiMSrgvxOO/FkADVRDOt/atsBYzTsmYh3EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdIB0wSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdIB0wSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A59CC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774107893;
	bh=LN2XEKGIFRB9tqPdDns606pzUviEtoxrS4mQV0yVYag=;
	h=To:Subject:From:Date:From;
	b=KdIB0wSE5waljsQs9SkpWpAEPPkij6fusfw4L0OSGUtrJfsuFTaY3Uhk5sc1NqFaF
	 DHXiml7wp+vhNRGdOU3Lg7W/FK2lBAXX6RPS73uL53P7Tq4Ev6b1DUPRQih56+Ff1H
	 +zZbtwW2VzVlAWc1xEuu781QIyYnWoV/dJm/9YNKwags4GvAZo3c3KBL3cjoeqm4HW
	 2upE1sJYMafMj3qEEaMThDgr4hZYkaUlfPAaad6fecH5m00UlQH8tyWTcnl0eM4o0p
	 D+smwPDuo1iq9qG791eAaG4oxF99x/XfKPj9saJEeQIwg+0LZyZdlltxFMG7pYnXk4
	 Y3Qc56HjEO2bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7F51094489
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177410789357.3662.11040041359859883807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aae19778c9eec84d9540edee643c0226b5511e4404ac892277822ea84957c8eb
Date: Sat, 21 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774107893
