Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E5884E1C
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 02:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735956954; cv=none; b=nXGeiiq1QpWnh9Rq8wMNZFP3GHrmOao6xLgGfo1Xc8boNg+dvcs1+w4BDSslzHK4E+Yzm8Ix44qAd6az51gY9DjoMflJeBhZFCShe2be8FkX19BJUThCVAMl+Jwmp2KIHm+xdssek3fwmcKi+qcbukzq1GCEcoUd0g0bvWhV/cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735956954; c=relaxed/simple;
	bh=zILT67XimhI/AKYT++JRE7TZTWma2beGf6gLF3ZcTT4=;
	h=To:Subject:From:Message-Id:Date; b=Vv9A/t7bLvNEVYRf/y5kST27yaojgVpO21klYkSWhQmvudgn8IN8vqX8ZicOBj69P2c3BPHu3qbJxbhz0sUZFPz0+h1M+ib+6iAJfxOF1MBXOvdVv9QxEIf1TQXfOsNAIZ8ffEYLPfCTzoJ+QwP240Gf6Ymq95xYlJZyCIrFPeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYPLfprH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYPLfprH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E86C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735956953;
	bh=zILT67XimhI/AKYT++JRE7TZTWma2beGf6gLF3ZcTT4=;
	h=To:Subject:From:Date:From;
	b=hYPLfprHC/UIJo84fZnFPq1560Mu3W0JR+U0Js0AWYsBNyBKNkqrdrSf3seYujer6
	 XdL7D3OLHwMevfKvB+aV/UNmi4HF0QY7iOyAcNXeBiHszljH0FnI89XQz8PhM7HiCJ
	 7rE0qUXenEJJHSK339vzlaAA005RpeC8aXrLzUXkYBrnQ1kBCEoq9QO6zFGaRVeUk4
	 a3IEzDctIi41kNMgnsFJPYYqC50AT0GXdZJHPV/IXLntk46sDEUrvF2KxT5zkrNgQI
	 5yHCz49emPWBcL890AhIUdN8hE3eqAkMyU3+zRprO6IiV71jggQcZGVrfq5JEmA2/S
	 63sF/6QX8ESFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC15E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173595695359.5523.15377639191219697460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30f3394065286b7c3451623e94c7c0ef1a3182dd80d2a56cffee54c7a9049eac
Date: Sat, 04 Jan 2025 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735956953
