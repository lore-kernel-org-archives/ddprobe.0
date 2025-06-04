Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F4A38F91
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749001794; cv=none; b=nj2r7WujflcFPpxL8TsXzHyKviAwbF6vyEN/1f7kXKaX/iZrtd0Yzb8Q4WeMQaQCM3TxLmuc30bbzI4QGTz5QtyQFZ3i5mHXSXPHoNXC7JmixeLQ4Vs01Gfsn2fFKA3nVNQiESHmMu/4W/kEctpZn3BvbUlwMtsmgVWny8zc63U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749001794; c=relaxed/simple;
	bh=B0MeasoYrcOC1mLQN6BxbQEe7+u8Euv+C4MsQdeHVlY=;
	h=To:Subject:From:Message-Id:Date; b=l+DWUxzHTYPPoyUNDZ2VfJDdbLcQn7WDvoV6Ic1l/eCGety/ZBODX28XwRxLnhsiRTAQ8qsxfsJd4yn/thzcFy0uxXJOLlVVa8LBITsm8oqWruO3whLVlXUys9BB6kNlPYzjVJV5P4exAjabOsj4M/Q4FwOBDZ35u0O2VKfx2Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qONpw0GQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qONpw0GQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8451C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749001793;
	bh=B0MeasoYrcOC1mLQN6BxbQEe7+u8Euv+C4MsQdeHVlY=;
	h=To:Subject:From:Date:From;
	b=qONpw0GQR3w2YjcKqHqIGnobReeNN0RPAsrpyI8VCpi0UocIZqX0iobytXRjnCnLT
	 TyoQoC1KZ+lT9q2k6ZDeCUzdVhoZA9f0K5LUJ7i1ehnKQ0J1X6OomJS0bTU3nbpq9J
	 l7Uze6AuU4vv0OnVy9R8gKc+Rd284l4npKUo5UyGPA8GICg+5MGK1VrDI/9u54MkrP
	 eojOiBeOHldRevsjam9BGKMT8RxpCGJ4/4wdeh19/BeuCsNrdo6zy+eNmserIwQFne
	 xSwcgOUczsfNehCmyAuCt3oYnvd4m+frW5tjqml//fRO942t7zK0+HbC1GtzwgFzbb
	 ac6VL1Oei7o7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93224C5AD49
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174900179359.5996.13445233111407961927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5195a6a023303bd6e53f5dd4d8836411ea6ea3b6b378ba5119200682e808825
Date: Wed, 04 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749001793
