Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B82B3EEAC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788796234; cv=none; b=JuqgJkS0BMsZ/N06v+oys/tw+4gDJY4ukpKyuodfUggTxWDFp+9Z9tTVPjGtpyKjZ28R3KrD99TjpGENoQ/X/0PaD473j+igpNq/N6zBVNZLvesv4UmXl0yXTT/6y9dpBithtrTphYsIE/v91QfOC8I3aNglivb97cwE2niOlnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788796234; c=relaxed/simple;
	bh=YKUkolaariTMsPW3iedm/cRLjfu0ZgVZirlN1/eQeX4=;
	h=To:Subject:From:Message-Id:Date; b=iZyVQ9tAI6N+aMARYxF+dxQFY/6cDOA/JuS30Y7uUyMeUlKRTGHSed9h3CmsWFYh6WNr3zBWnoovPjUhyBzA6wleV/vvjaqdpfn7sUCC6VXxz9toKKcK0/4ShBdTWq29+Ea7KSkj/5EpggO5yh5NRoKfAqhfEOqhbWB0/EkDces=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aV1+2Gm4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aV1+2Gm4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0CAEC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788796233;
	bh=YKUkolaariTMsPW3iedm/cRLjfu0ZgVZirlN1/eQeX4=;
	h=To:Subject:From:Date:From;
	b=aV1+2Gm40dXnQt1ryWp1ZHtOcm2l/1hqfhbDmhrSN1ga5N25CKY4ppojCubt86cxq
	 hVWrZhIkxPXYeytIBI/hj7OuFXyDfnxM07Bka50ywwFVys52KIiJlCqxuO4fV9Rnh1
	 wp76NhYtfRC8nkfuB5fQaXMXp7aHTkMI1cxSFrsAio8HqoWiByhkpSzAkC4b+zebv2
	 qLpnDWJgPtkIvwNGOhZIrjC96DMZJJ1eTwoQATg+SaSWs7Ns0X1wm8vQDIvMQRJdxX
	 fnMd45utnrGFApqHCoECm2JZDsIM/Fnlb1u4OiUEOyORjGTL0tLeVs8GqW+7hhoFZT
	 3gwwLVhTmqbsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BACF6C79FA3
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178879623374.13559.8445798820047834773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa224161c77e5d0ec852cd14cfac020dace89ab8887d4ed66a2a81ee2838d341
Date: Mon, 07 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788796233
