Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4407A324B0A
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787959834; cv=none; b=oYZlDCMBA3UiiGLuSGkYZN3t5OChWOBMnxZ4FiA6yUSLpJR1LeM92olaS5PXYVHos4IQkiANmJugytowvh7m+prcIed/9e4Xh5wNP6F3NvVCm049qYDcHBIrydjj2qUBpJLyz6wieMlz7qz1qspzxaPlSbkf5C3ayTES/uZfYpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787959834; c=relaxed/simple;
	bh=qX6BcPu4ZASNkZoP209WDWhSYyXyxFPEoNpgM7rqNvU=;
	h=To:Subject:From:Message-Id:Date; b=eOqvO2XyeylMlRsZcdNIdt+Py1Dxx+s90jcD95bbqWe1ag1ZFTKt/pZgHVD8PuFgs8Jg+T6OKNjsvm4pz7t+2c0W7Sq2ScNpEK7v8xNkr7Eio34V6gAGBZO6D41ghHgA6uyP0LXx2A+j4OSILJ0UAotTGO7bA6MwITfvfEUL0f4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMkfEwBK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMkfEwBK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3ADC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787959833;
	bh=qX6BcPu4ZASNkZoP209WDWhSYyXyxFPEoNpgM7rqNvU=;
	h=To:Subject:From:Date:From;
	b=iMkfEwBKHegbvGnfJhaDBFZh30DH0C49NPIN6JLyldsBjG7ph89bq9UFS+eT3/Oze
	 VNw3xFa7937VYBaycdrcDaX5r1dd97BAi4xTkFr6DphCJZ3G/KFSoGIuUW6UxbP1n/
	 bhPi/zy/2CzmFP2X2hQw+1aoUedYsHRM8L4e2Got/0m4QE3QqpCeXnoVwgezqXXHAB
	 mdK5Q3bfawrCGZtVEiFyeHkDMYFuLOfgJ9OGWhgV3NJ2p0xZHz+C/vbdsLLLbOP10i
	 0oX1ECSgPZ8wWxp1/xDotG5KFHXOhVcdle5MhWCwRdn1QrNYO0j5oiGTSDnzeFvW88
	 30xCjxBaE7m9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA521C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178795983368.11282.994580312152889573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 251cbeed86eacf253aa1a2833dee697d354ad15f99570561a0d16e0fd59949d7
Date: Fri, 28 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787959833
