Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B37285C8B
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 23:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775260534; cv=none; b=n++t8YTTiaCtTsGl+C82wQiFA9e8RSwFxSzF4E39zR3ge+9sc7Ar0Qmg1RBUvXJgcfJgvS+EktqYEWQEW13HyPjcKKB62hVDGMdufQU72hICXRFlgkLy6UD0fF01Z3FFZiGSyqniuMCzPbvJ3oNiHNtfhOPCl+tUSybzA2WuQlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775260534; c=relaxed/simple;
	bh=bEzmB/GECGPlF2nwTPTsaLi66UbgDA84q8mjwKOjYP4=;
	h=To:Subject:From:Message-Id:Date; b=FoWfbnKs0/mCUU1EYj9SDmp1pchN//JU3PjchOoXKVysvyPmzCJoTWvBzddJKYYjDuHeSFY5yeM2vLrgvDtusk2rf1dnR5MD5UiS91zFy64PeILmd59l2h0zDqLi+TxII8+V2WozSrJGmfsOqPD8/pS1v3jAFK5xe9eWpqSPfRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iT5GGbRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iT5GGbRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E53C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 23:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775260533;
	bh=bEzmB/GECGPlF2nwTPTsaLi66UbgDA84q8mjwKOjYP4=;
	h=To:Subject:From:Date:From;
	b=iT5GGbRt1WYQWzKA8bMBpQA5chzNCsV6YDoTeC82fmsWOFrVtd5wn44WPcSkpF//4
	 tgmXQi1bEuewAaqOZjbnF7aOza5U+47lVYIB0QX6QP5ZZ09GUmKC49ztliJ/JstF8Q
	 GiA9vo6cN7Up1RBJsIH5ZR4yTHLQAw+kq+KygWOr56UahYk7vKY9Hoq65lRsYkR/B3
	 wCXRsejUPbrFFNkGTRLGGv4KD+xxjvs1PWRNnkpESb9p5Yi50hFqHpeaLts4z/f3n3
	 Xy2XNRPf+s48o3SMTL3N3UCV6FI1z1BYNDug+yLd3rZ/ghn4VP0QDXRzG8GlXbUPri
	 6YPbZaGwQwsSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB9AE88D6E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 23:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177526053369.19082.11475838034881926834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2add263e2123f19706f71acc90c256631ab75eb70db970bb918f697938cc7ccd
Date: Fri, 03 Apr 2026 23:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775260533
