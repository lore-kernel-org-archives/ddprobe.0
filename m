Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 056443FC7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754451594; cv=none; b=sz+lI7G6tsRLWUXJ+HsbgyMxzlQpzmaEweZJULIqLJm/JhVF6je3GCNbDxWNRD2MS6WL4HdZ8TcLNaG5T4iGDZ+YHuhMxFDXnsaNNwya8MOrMYA2ziXsCXAH3EoqoNX6Mq+Gc2JczfwZlLHpAEKNDvdFRZ07uh1Xv/X7uEIi/k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754451594; c=relaxed/simple;
	bh=E5vTVz/Yet0LyyJRNbeGbqjEgOqcON1hhiQbWvi2GE0=;
	h=To:Subject:From:Message-Id:Date; b=UPEY4Xp+DBVVb7OdiEwLAcvxAD44E9nNn5ds6YfVDDT6NAXEaT4n4D3oJTOB9z8Alz56D7UO7aslENXJnmY5eWiwuaIrdbbFbnqydOOJ3Jx+CN2OdBwb497lWqEDBcrrOSsz7oFUWbpgMWnl5E70M3nth7Sir2Lcgb6lHdfUM4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVsoGLWi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVsoGLWi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE4BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754451593;
	bh=E5vTVz/Yet0LyyJRNbeGbqjEgOqcON1hhiQbWvi2GE0=;
	h=To:Subject:From:Date:From;
	b=oVsoGLWigNXVUW5scb0W6+e0krmh7OT4mPM1pfwocrKnteOHz1sDLe9RHP2IX26S/
	 1XU/SbHbFdM0ltxcn94k39IpHPi/SCf9dPp9JRosndDo2Awm3IeC612gIkPQVAIaBx
	 +gqk1DHWWDRZXbl+VtwMa1ubyfQUWatTt9mNlSiHX1tgLVgAiC3BnCpDZUIMUemAKb
	 8EbeVPjA9g81fTKOzNY8UVWSmHUVoVbMkidAhjHHILcDSGs6EIkkUw/LmQpV3vBS1N
	 le8LDOtdfPjdlyiG0sjgSIpKxE9Y63yLEQLYpHI9t7OcV9/FQJyjNU33Tzl03cDfCV
	 mObIiu/ouY/2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5B2C87FCA
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175445159357.17836.7101967147356391480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389a67270dd5a067449899e962f9212763d8b621ecc2fdfa353a1db9b00e6bfe
Date: Wed, 06 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754451593
