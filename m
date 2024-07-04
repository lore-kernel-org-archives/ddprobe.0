Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADFF210EE
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 11:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720091723; cv=none; b=b5EfmwLg5hkO7oE7ZWmpgQZsiJ3cjSs7F3Qb2FeO86HUR9lkJEUK2sfutRjMTmU4Ep00dj+I2WGjRJxS8A7FwgnNmj1rUSDMwbMY6AfolAWJhyEbpR43+theLgcxV75HHvniR6yttTls1WN/7on95bT9DF9woibqDu5kNkNRzLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720091723; c=relaxed/simple;
	bh=5YBtYhHNBpVpm4EydgF/uXOwroOMFh/KUj5FV3Fqdlg=;
	h=To:Subject:From:Message-Id:Date; b=jp0K2fztzAMIe0SzvO40En9B4H+gHi7deGlN8T1wJK22llo7B/sB9zMurDQksE3pVOYOI478UCh2bjkwJR0gdR1bW6vAbryGwyfE8GQ+Yr+QP5duMiaoIXak1UZBK1mWhEYGbSy4EkxsdFEjn1gD+SeuoWTICYIPjVxtS9clOfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNsT1QUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNsT1QUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49A6C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 11:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720091722;
	bh=5YBtYhHNBpVpm4EydgF/uXOwroOMFh/KUj5FV3Fqdlg=;
	h=To:Subject:From:Date:From;
	b=FNsT1QUbqtRlJ2lwXPbmFcX5mPzmokqCJmuhHrEPHk7b5Iz1NmQnUCjFz20qXuuRc
	 /PrN1M/Qapmun3ldLEqhAoiFitAJp7MjCddsL0e+TF9f429/YVyUqBuG1+1TdvruXX
	 7PwmgcZYfpJzdBiGIUlAo0WkVu9hti0AcPyjqeNV4eyl01+1fJBEa+yCUQXG6NOwVS
	 m2fqUV1S67WN4z92HyjrTZXVp2AP+O7xrmXFrlghS8bYmI8N8vs4xkhNuNUAQrI/Jk
	 kQaXFT+bqyuFkmBnXuv4L/AU9P8TM6kpVkUAqfrvuGJmgSJseeItGjDTMMI+3qhZLz
	 okTydzXQ5U+lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF4EC30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 11:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172009172277.6640.3354518123871100156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f73c28c530e16d0a12e554333bd07490c8177685c798a7a42ab9153f04c41867
Date: Thu, 04 Jul 2024 11:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720091722
