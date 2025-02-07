Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296BC23C8AF
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738946754; cv=none; b=Xk3ZMlavETPQPAmMmrt82ygK37cgf93Jvx7gJrbaI6tuCOuNKTAHh0/TT4cFjBdYVbiIK2oqcJaesZiBfMyMzVOkchcSTNxg5Md8jvBG/W+obJyYUIw9ksmotGymqm8Gi5FCE2L4MVZocAMlYD7m2JdwZRAj4R1vvmZOV49Rvc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738946754; c=relaxed/simple;
	bh=X4bv3wOdRb+4ZmPnI99lmW0CQnzZh7caycl49Rx01V8=;
	h=To:Subject:From:Message-Id:Date; b=Fo+I8A5SycNrEotTyZNLlntEUtcu3MkVi+7cWhCTVvg2qEkrKEJqrBf8R77Hvh5J/YpluHYeo2xEKGpBWaBgm55OqPV7IN5GkjU5FswcziR68q7dfcJB29aVmVEOuu2B7OOPHTWMcrhtQ5htWzkwOiB5v8hwhEwPSlZfOr+Kts0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXoPGeCi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXoPGeCi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9244C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738946753;
	bh=X4bv3wOdRb+4ZmPnI99lmW0CQnzZh7caycl49Rx01V8=;
	h=To:Subject:From:Date:From;
	b=QXoPGeCidVPWN+KO9ecxDpcjVWG+UV+rQ5xJDVXkykLCiHRMkwRaNY/lEYxJBZ7t2
	 qZvuSPti/8JTk9Kyd4BN5unz4vm4bgczrlAwfLTU72F0Hk6EhXTUT7RpmKRt0Rg6I3
	 AdNNwXmhTIoMTTnzHjKxe+hFs/RDo8xnQKqXaElnoesS6XDgo0fTgvC2IGMaK1QYy0
	 SrSX8n3HcmlV2BL3ItMyGKUmcZVzWCCmtRU5N25PrMvUCwue7QZ8IMFbIQc6ExBYNN
	 i/qApiX2Iw9Des7KzavYa/AA1ZfmUGpDAnyqJgy2uX/RMwRERhuvKXFvx/O4HqypKF
	 GD/4EC3cfx4vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958DEC02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173894675360.8534.947413960719207019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8445d6d66aac6893abe525f82b1c65e5b37cc3fc8525a3d2dfb2d2ab49105534
Date: Fri, 07 Feb 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738946753
