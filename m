Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1F7235063
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748617794; cv=none; b=Cr1QPM+6iq9l8QKb5gGz2OBndvoeuowXCX77Nsbi+A/JCYAtfvgTdjtIUBbGB6lwKOMuA7jF36iPYEp7Izn1ZiW3OvcpMzXK3X8ArC1eTKV02D6eOqqBLTXZ41WaVjrpTrqSsEeeu2IVlBr/whKpc1WOB4APkZPPRR4KApDEL4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748617794; c=relaxed/simple;
	bh=R+wu0LULirn5o/WEB+NeiiruVrFN525IAq6bfwTIL5o=;
	h=To:Subject:From:Message-Id:Date; b=qy+qZ5cgJYnjVunm5omj7KCniDrlcHa6hQADVijWh4jLnT3gFSfBlZ7sGsw/px3ruo/RzLtKTzz4+h3cRMz16k+QIpKWJLLcrAV3y/2POkDmQi0cIZkmQQEEp7ScCHro9p+Jsr7gvTgIRvFuHvTXUExxbvHdVdLo7XdLD5KV+xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKHiTyV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKHiTyV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF0EC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748617793;
	bh=R+wu0LULirn5o/WEB+NeiiruVrFN525IAq6bfwTIL5o=;
	h=To:Subject:From:Date:From;
	b=NKHiTyV8ukOmKcdQTgvsdq/BbRRsYZcwSXQI0VbT4VHxSvR9Gt9VRnpMsVWjF8V5h
	 ZfvuJ3MWLWfdkV/jxo8S+CZD121t757kNMw5oO6PqqdsQFzQ8VzpdJJvCiNHh58Wh9
	 kv3rDAU/ereXOW9fTvG2CW3C7BUJzb9ng4x8/NKGizzlHcYXk2MFjQ2+7P6Y2J8o2y
	 J5IGgES081el2mW+4DnxTA8OoZoB4mFwP+THcjwGFoSGN4qd3L0BsyRwOnXJ5QbdHh
	 b1PIGienaSRpJtIZadYfeXO7GPRkGBuGhlVGbByLL8uWOSL7dsUC5TzcaNNJe95mrO
	 isHnoLkRYI9TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB91C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174861779358.17757.4362609469081654736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ef0f06b04bf45d370464721d5eee184ee45d10f89eecebf3a47f7d862d8b868
Date: Fri, 30 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748617793
