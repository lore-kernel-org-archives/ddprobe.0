Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3FB265CAF
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747731594; cv=none; b=BMVBxtp2ay8VE4niLEkGHwXaqgnALowlx45IihFc2GEdyQcWQG7SxjuDYk7I9xIbaUjmOUDbC8+Z5nY8anNTJ3HLtjytJaL7gaf9w5uU5pJfQjZHiQvP/cjhj5wjKAMXcfQHRdAjQZPWkqSduPIuvVHblX1G4cpmDjp6HOzgKKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747731594; c=relaxed/simple;
	bh=WbrxmHn+YcES0OI2N7dnclSZhjHznrMtjCTBfg7OOvo=;
	h=To:Subject:From:Message-Id:Date; b=JRBq492LpVPMXKqUAFb8L1jGe3SqvoS4xM6yHP7RJ6RpBYeKlibfECyG7eNOD3zH4zGLPZIzmmW5RNICUljRb5Z+r4bYXCjKB6QyKa9p/CjYsmMmSJWuAgpXqPG8+xgBYAw2x2wExf0HKr8VFZ43/F0rSSaRJ/sx200+ksKjeCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iN3AIZ7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iN3AIZ7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D04DC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747731593;
	bh=WbrxmHn+YcES0OI2N7dnclSZhjHznrMtjCTBfg7OOvo=;
	h=To:Subject:From:Date:From;
	b=iN3AIZ7dsHwOUpsNJRX//NU1BDrWPHrYANDELOotJh9R+zq7Y0iyaglmyU0icmbWg
	 ZCgBYd5JCwxo/3bK1UQ9EN+H97Rb0PWqHPNkp5EEZiK1Y0XIdgVd9bTBZVoFMMqmGK
	 dJlmHrlbtXbY0LBelCWZF5pSmQgXNmS9YjbMIXqtJyuBia97FH2Y6E4UJPkCVg/64X
	 Fap2JkQd1wOSQyuLXIt2TX0MgNjkCVim7GsZfn6M6JMZDyGz84gPeDsx8yc8634p+x
	 yXxW4T6D1lBzmsvWzB3s9wNEEMAAnxvrhtchzTIfpJBmhsrlR89R+YtL1oTgJlXAhR
	 JWmjvgnVwo7OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E644C3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174773159357.8802.462622451671271931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5891beb904d323b59775308879174a9a505900c97ca267c3615912de883e833a
Date: Tue, 20 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747731593
