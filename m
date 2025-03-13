Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADBB4CB5B
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 03:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741837734; cv=none; b=T1nZwGkMipmzvcOMBmLkSIIljqHb/5IHOHsdpu4I1rWg2hnK9jEOIparlpXPBOvYB1xSjULv7GMGyugpROmbeUZ+s6cpAY8pvGWWYUfwbHPq8jjwsO5LqjDg70l4lBom+sjtizVRZZuV0ujWR1MOy9OFZwWleJZ1lJi953c5BD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741837734; c=relaxed/simple;
	bh=NOmsBOKYK3pMyv2vYFvRnKNHoq2weddWLoLO7RKN/9s=;
	h=To:Subject:From:Message-Id:Date; b=Lcw0qVR9aQtty39mwtY5Lbg1uMtev92DtNGR0Oo7w8yL0BLdwyOqmCFG2R+JqV8sEXvBWqWIzXZ4Mh7BVP68yMEz6bQP1K2F+LErSiFio8HIzRXnLaKW/7ZMKZTZpHZOBouePjfLJmZD0h/bcxhRjhSWl8erdiUmH4Q+/sV48Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWQUfz2r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWQUfz2r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07BFC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 03:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741837733;
	bh=NOmsBOKYK3pMyv2vYFvRnKNHoq2weddWLoLO7RKN/9s=;
	h=To:Subject:From:Date:From;
	b=XWQUfz2rQNE8F41NW6dIuHrHPhoH+AzEh+JURjol5vz7WzG5pCGToblZ6+gPmUbwb
	 4BbElX6CA/TuofdzJ4I/mcYv6pte1u7j/kQeNteteQo9xtHnN4174kAAEg/DYam+Or
	 wNFtJXgBSt2Uf8uGzAFTA3nUtZZ45mfj+7TB30ilm2H3xDaQSJlL9DOfHTzLRYcgc/
	 PIOj+f1OiSoZfQTKeogbiCl4h/cNzrt/mJZ4IxIBjdTw8ECKfxqqEhYBR+nHrdyo4/
	 vtYkKUDfdklu1SFPYniOOYZSzAwOSyJF5hKbAhNSl9fbUnZAZOavrIB5/0X6PSc/pR
	 WAMtLW+dRqH5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EF9C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 03:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174183773360.4789.10859919874812537499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de8cdd644698bbf131dc4bff99750e46fa9d9ecd7453db1772982d6c26129bee
Date: Thu, 13 Mar 2025 03:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741837733
