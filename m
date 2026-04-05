Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE121D63E4
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 05:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775368534; cv=none; b=Jp+RL09YQsyRehk0I8ltWzz6WWsZkU+g2WbRjlc/1HWGCKDxh5st3sp3aAZ1uX3JpZI4QQ0w02eHIDfOSvvfLN5Vp38X0OG5dTs6S1DZq2f055ub+O0itfsQznVERKOTB2rrJ25MeqdxG5bMSCmoVfFDqitDqOP96rZBwA8qru4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775368534; c=relaxed/simple;
	bh=OD6dLZhjDZ9+8x9IwrpYLKblMizOQ/2QhxKfRIF5F+o=;
	h=To:Subject:From:Message-Id:Date; b=r7x1BSh0c3ljnCQszOaptI99PC4tf7IX2D2jxLHY7EmCPF+zZIZmBaJyPvm9p+GswCM3gtsttVcDYuny1XzJVCQkxtva15D2t7MISgkeGZmjjx3lsOUAxKRlKVVt/d/J9y/3yMr0WD22U8G+9emWbJEduacFxzR13vMtTTP4KBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnDZ2Pk4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnDZ2Pk4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60AFC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 05:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775368533;
	bh=OD6dLZhjDZ9+8x9IwrpYLKblMizOQ/2QhxKfRIF5F+o=;
	h=To:Subject:From:Date:From;
	b=MnDZ2Pk49ALHC7XlnmW9wpIMzasuuiZmGNK5s0y3H2Rqmtk+rFfOq/avGXyWKHESE
	 zCUCz3qnUo3cXD7PjCP0P4Nh/gMahkyA9kszzkT4DqpvahbxAe/GDv05YweWe8xYPh
	 pKcU1sDjNg9nURgu5i+mHqXJcCQyyRyzZmX53qEoKJkXRAa1LbJdCB9EicPBd4OCg7
	 i4Z8rEsNwDt5qAyHblVTEDgKW5bzIDRVNlZhUpJM/7g9SA5mXzitRm9HO3V9oZIQYH
	 exMMgTEvinDOqmVnJMBvWm/GGo30Dv3iTWYa2F1ueqpahprbemxwShw8fjrEwTDi4/
	 o7jFHyvPETc4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2374E64014
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 05:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177536853369.10459.11247051019278688534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49e5207523e714414247b300b5ac9e408a604e1ae1f9960ddc812ee02141ea9
Date: Sun, 05 Apr 2026 05:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775368533
