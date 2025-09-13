Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225BEA935
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757734794; cv=none; b=UjcVbd+JAXqbItEy1Tu+oNOdADO9DOfFZJtcUFWqCwnOUjqPg7wRt5ap6bsoHV7VlMx88hDzZKGqnvgYb44sZODUrBRliAU4HUldSXxAghZgNS7Uzk5fDa7o60I+QCBSevDARDEpA5dFc0uf1OAYo7ezpXHSPy1HD7yN5gOPTtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757734794; c=relaxed/simple;
	bh=ThPP6mDctPPTgf/+xBv+smfh2sHYFvHlIJymiqy0MqI=;
	h=To:Subject:From:Message-Id:Date; b=VrcohGges4S09YS9jVD9lXlxgYV+W+CK4Re9G4lPRJSJu1bCyXQ0Iu2DB4+1bf3AGEMXD/tqpkW4dvEVtam/NynabCK/ura3KIbQZBGMwhAbjNTphW51VZ3CkMYiTkwp3Yrn1UCNJLiDtgaH10ES1EVVuaO8/UdeQ3YsZ0rH1VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8O4T2Ju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8O4T2Ju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B02C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757734793;
	bh=ThPP6mDctPPTgf/+xBv+smfh2sHYFvHlIJymiqy0MqI=;
	h=To:Subject:From:Date:From;
	b=Q8O4T2JuuGXdtm9h9adv2IAHlAWrviWxl2J8eJmBMs3FSMKDUa2kXsruhaCUnj5tN
	 fyqWpGCVK297GPebuK4cgxJBZLkp5g73/beWmPbQ6QeYr98+0UysufWgcoaq6EnPDp
	 dYZFW9PXBA5axeywcOWBL6tMU2HbO4keTEUBsWEOK7ra+OMw3v3XqqPe/vK2yAU08o
	 KbKUaJOt3jZw9eTRulzbxI8nH7bfdTOyE3pRfRCV0YeBKW/5p2x8LwyuRAcuC6kD95
	 p3oHnlTg2eNYYKO0XLAJB59iOpVWuNmE6AmrMi4HhQQ7UHFrJmlzT3yKCQD597BNjj
	 g2L30v5jh+ouQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9201DCAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175773479357.22551.12494398539612200908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db3caed096fa786a311a655787fc195afb4a893b963674a9d515bc96be70099c
Date: Sat, 13 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757734793
