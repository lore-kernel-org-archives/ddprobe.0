Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D56157A74
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 07:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713944423; cv=none; b=a0rwmqeYo/+TNdBSLgJdm4mpnP7Xw2CDMx00jhuTIkx4GuDv2vk6nwznICzfUo3XZhw4w5ugY4ZqleyipfJeuyjPJWWC7bSFlYcLBfs5aA6zhJXuHm65Dq6yD7u8Ia+CM3soyQQ7J5R7oR0wSUUuRyYvgn3T82tgBr9aTdDiSiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713944423; c=relaxed/simple;
	bh=Jcq+62bI9WioHrg+igek5pluryZldfXDd6cPOWb3Kx4=;
	h=To:Subject:From:Message-Id:Date; b=r/mf+vuEpjEvyPRYunZ13j7lSsdXkuYEIJOoZZFMphf5uE7lfRc9No7SACHBgeSZtgPambBqbsqLNE8ZOpgJTpmHSOxm0ryvh1070BJcD/rDKlQhPSnFLtFcPtb0jWEhoBoKXzac0006AyTO/Dcf9nSE1RwQdRnWf/ihptmsJNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKz2XZDW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKz2XZDW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB587C3277B
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 07:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713944422;
	bh=Jcq+62bI9WioHrg+igek5pluryZldfXDd6cPOWb3Kx4=;
	h=To:Subject:From:Date:From;
	b=qKz2XZDWi8HnxOgZZFUp7GRp8JuWyKEGwnE5tvK9l4eNNAbMCao/M3CzjIeQ4QevI
	 skXLRG0C1lh47DrShEJK7HI0HN2tI1WRij6HHqU6QdK8Ibkblbew2oeJy0JP9rrV8j
	 n7t3eFxJcYPRKZak6On7IlYhjdijcOX48YNjapJosvgkz9gkr/o8imOL6Tx9OTYHbK
	 WM4CAFziU/Ka0cOPm3pVuDU/wXqvXognJl2Fz90tYHKi6RBuCbi2os/XM+MytphTw+
	 8aaX+hLwM5FJgu9u8PLHGLPVY6YlrMvrLvxNcl9LdIoMEhkxiLmlL+w7sdumgNkMFK
	 0O5pRyqr7V/Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C544AC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 07:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171394442279.5232.15094195487659936967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a70e61076602aabb70dacfd560189f4d8b1619ca3d8b0d0c107b4b22a6c3436
Date: Wed, 24 Apr 2024 07:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713944422
