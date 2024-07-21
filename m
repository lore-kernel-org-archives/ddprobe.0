Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCA31FBA
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721546754; cv=none; b=I2PgoCGOWaWOD/EuvzPkyGSomKOi+13Sc2GAkSY3cB+tJuRJ+KxWOf8X5xBGdKZTa12rToFC0RelPNFVKsEQfcqfo6pyXtY41+/cXJfQOlHZKK6EKOjcauute6znOfDG4FcozRkvd9YUINK5ucDkSx8mZTQQfUiLj1bDDukgzC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721546754; c=relaxed/simple;
	bh=1LxspPZLfZeDoEEgNAeUTRLmLOTr1rcDrJ/E/9Uo3Xo=;
	h=To:Subject:From:Message-Id:Date; b=jOZNN6AH+kewBJK79xnkalBA0FBGtDfSAyHzOF+OUpWXcDonPx2zUY1rIFQvOze2n1JlKzvS8D5xrXYsgKikJdziYj+fnPqAmXpriC+Ci18z8OnJFdWeRMm5n6WgMvu6Nwd/xzrXvf0hpX2t/A9dFOAiXbUt9X2qxQpQG2RTij8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QyXOVYlJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QyXOVYlJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5328C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721546753;
	bh=1LxspPZLfZeDoEEgNAeUTRLmLOTr1rcDrJ/E/9Uo3Xo=;
	h=To:Subject:From:Date:From;
	b=QyXOVYlJu5bt6yW9lV+4+zjRi8kzLP1zLBZUR/klx0iTVIeWYdxNcv64qUXBh280M
	 58bGDiMhX0DP/M2q8OQ8L1YDP8Zu+/m2rEIzwusWeLtKj/LZXXfNgp/Z5bb0LeNDxI
	 B/7ZkeYCy4u9nZXJeHOjFc5oQB176/N7jt6IcrPSpZqKfW0bQtB6HRYg3tRNkWlXPb
	 5Df0Anl0aBtY5Nvqx9Z/uyVZXmpetAS2iLk6s2UHHPiviTN0devepmQPNLW4MbMmq8
	 5RIWjzJ7vGQ/IJA9YExM5UbhKHMsX2PUo90K8h61KbH+c9GH7vqE5ORSQ+weSmIeKY
	 PRYKj4Kvo7P2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97102C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172154675361.28612.14958302033430684668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e91b0eec02166d44720b6e314821edaa44779afaee847cd4d83666e7cb16ae46
Date: Sun, 21 Jul 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721546753
