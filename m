Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F119269B1C
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 14:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781446594; cv=none; b=Ybhm6B4IhKmaD+KYd+K2hB1Ry705rg2ZmSDCVeexf52JyXtHMydi+LQBK9icfUPM4m276attI23+JMEDYfZfRYujz4bl6LLgQS//T4Uw3LP9T1M3+HCBu7DhITIr3xRijOcnFmOZy0HOXSXK1DRJtEKz1YuyG8Hl54Gk9j/rV/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781446594; c=relaxed/simple;
	bh=xBI4XAsLqVx5qYB3/CxS+UbRlO3c8z+EDd3eV2QI4ok=;
	h=To:Subject:From:Message-Id:Date; b=FVGsSEC/JA51aRpSiBmeQ9s1eEL3OKgI+7njaKptGcro9eNFKOVyqZx6hx264RIQtQ+EJ4ANm0T3p2AUPRBz+OqYlQOtFw5PX71WEtpKX+ifkH+aF9gJdLoTbYkd+1TeVtNglA+NXs646CVIQYwvRNarg9lU6TmDwUSXA7VrTzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUgrcHfu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUgrcHfu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6834C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 14:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781446593;
	bh=xBI4XAsLqVx5qYB3/CxS+UbRlO3c8z+EDd3eV2QI4ok=;
	h=To:Subject:From:Date:From;
	b=FUgrcHfuya+zoAUpPQx57njbu0LnmoPm/Uxyfln5ujvSBwNSrZYS/xDRA9d7Tc2Vs
	 wn2MjYzM0T98nL6dYncGoYrGGetWK6i3rOUqqadV4fzTgFiS9QMGzA5Ez/rxvO4Zn4
	 DM7i3BG9aAirWnkiPfAkulZ2uETDmWYGHSOeexx6qGrw4uAh6kuSAR/u8vTs4Ibeku
	 UEOEM2lcAuKavRNnpqRE61b6tsgYucinIy9WvgKaD1F1dP2cDPH4TEoM9LHpFu56vE
	 hOcEw+l/91wxnN+kcYbINxrYelWoNHoGmxNaQxsNnd2SY8JcVyY7X5yLqflTPwBcZV
	 4s+Rqi+/iEHpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24B5CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 14:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178144659370.8126.2531428545725045439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59e9c2ac9bb193fa352f520a511acec473ffb67ce66d789965b825902fa5e040
Date: Sun, 14 Jun 2026 14:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781446593
