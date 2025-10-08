Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0C229E0FD
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759939794; cv=none; b=Uadm/Utd3zEJvlYN45xbrE5TpZqRxTk4UfvWKh0ct4HOOLj2QxjAmucNAVU1CEOdyEGuWCZ8CNwP6j95/vUOl9uzqG3REzrfnkBP/UCTHdG3+BXr3ZKgXrePw4X1fB9xclwhizFD+ej4oPvMOUv5yBPkJmu5L1KsCm6QQVF0MKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759939794; c=relaxed/simple;
	bh=1iq17cZVtq22JqiKo+c41F5c5X1dTIg6/D2IsKO8jNs=;
	h=To:Subject:From:Message-Id:Date; b=J/IND0/KGXA78PT+5LJ8MhdwS8gtK/RD3himrkQDGaupovceZO5Y5Eza7TooswGGsphmPLD1FQM8m5QeknUoZJ63/SevP+996pw9nUfKEoDgmW4575dEY7cBb/fXFgwR2k2eaxmoy2XOGdR8kb0HPUvaTc7v2LiaPDqPdj4EK8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iX2//NjK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iX2//NjK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59BCC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759939793;
	bh=1iq17cZVtq22JqiKo+c41F5c5X1dTIg6/D2IsKO8jNs=;
	h=To:Subject:From:Date:From;
	b=iX2//NjKJBx+6//ZJJf+q+WuxJP5yUpQxlHg+1ny8ueL3VcELhydMMU+DNsc4S5l4
	 poGsyzegEtOdW9PmqKY7yUiDVezH8XrlGFfv3MQJb24ZzAsKANDR8WmYjAZJwL6KF3
	 1PyNfr19hRcNaNN2HYdVYC0aRDjXIWHEWGACuIHuHHfU9WIT8ynCJnkOVf21RtTBJv
	 bKNc1HQNDUqu5eGdlo8GVQNWMMk0WONDbGXOJbWo4DhhTAbN0YOlZvO8HX8I9FBUlT
	 Yms4fhIsGW13eVSFu5ke6Wl8tuqwQK4y/teHRaoxlj0UXwvnR4IkDKQ0jm9jtuOLaz
	 hPQoBLsqSl2wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C5ECCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175993979358.22308.15175035580759129271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552dd572730b245045a8565c0522f79a782af7560962f516e9de344d0617bb56
Date: Wed, 08 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759939793
