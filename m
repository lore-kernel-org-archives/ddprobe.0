Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3719E1D7E5C
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748470794; cv=none; b=AAUhQmMojG7kp5BfJoZgUTB6UrWrTkoUyuZhsMkbFnip9ZOAYpcRCyT6DwSOXi2EmZKdFw0q850v1GO30NhXnCyqBcaBhpOaUxPywbEwIYGm3y1L1STFzXTagg+UnS9OW9V12ayTlH9nNr5jZNoMxY7X9kdxmmHTD8jXTZ/IEmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748470794; c=relaxed/simple;
	bh=wxGbjWyttAyonxvZc4rezY6Xt0YoQ7COYXyBk09CvOE=;
	h=To:Subject:From:Message-Id:Date; b=jXr//dT7c1guTuKjQz91W5RgoF/8Ivc9xH+tydLSR8VdSL2SemTfsQkjQmsDyNpYuv8C7fL/0ZrEnIXkz6AT9ooee9GPPEKnC7pEzIYJZuDUrgGffx5NpB0lSWU/mU6Nmu9Iex7z4dv/1OkvC9/1GvQtWtqvzrjw2v7MQOFux8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZsfFuHj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZsfFuHj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E13C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748470793;
	bh=wxGbjWyttAyonxvZc4rezY6Xt0YoQ7COYXyBk09CvOE=;
	h=To:Subject:From:Date:From;
	b=ZsfFuHj+7bliX7Swa4l8mKLaI+kCT/2rhzH/FpqAYfeQKWD4wMxuJfXB44kScwTh4
	 u+OGhfMs72pniRmFID3y2oZFEq7yChon2r0EwW97drDpeLVF6Tosu46huiFMqpGYpN
	 GoY3pkqAvy0s8Paa5BgUf5gQVtBeEJF51IHnby0UsAiNVjeeHq8lLvKtS4iBqiTjJp
	 Z8Pb5VQLGoU9ukrVYESlgsI1MYMU5wSa4Dsf8nLJGmLWqyE0b1LcWQln2UB8+zepyo
	 ArfURzKwUDAz4aCvWIlLCXz+3/nENW3vTyWIkPFq9upEkaR4ieTk4iz3ZrqkoC/ajU
	 0HO9ND1Nad1mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91722C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174847079358.14204.17082089426486683838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71dec1c14d1bd0f5a262655a3afecb1043db3a55cd2a512f3fc019724cba8f88
Date: Wed, 28 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748470793
