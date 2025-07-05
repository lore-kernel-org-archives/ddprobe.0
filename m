Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101D0179BD
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751681994; cv=none; b=LEUcylRnX/jeA303QxZ4RY2Zp6Xv7HSHuiKI3wDzSMKjUp/NFdTcHTY47JYEfg8IFBBqKSudwGhX724F0s2APcW1/mZd/i3nKWvYHC9K2HSmt9MR7MK/KAkI8j0mNHfOa3Bm12rFySfVUlZIxREA8iST8ISbsRxK5nHTjn2aHAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751681994; c=relaxed/simple;
	bh=kuocqrVUPkjJFfXj+hNvKDWtI/sLgmrDB2NPLVW7A7g=;
	h=To:Subject:From:Message-Id:Date; b=QJwCqvfHJhMA9Sv2bN/kAYR7pjYu6yVq6ugvKi0xzORSXQHVdIj0yLzgSob5l0N4ElMTD1vM89EqgmwXn2ClwELN39H6P9SAr0udVmu3+iMKMLZ2xhvwPGCji+gZclb3U+ie87aazxMVefP2V36LB9BEdg22kxdqula859crEjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Agz2vJkI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Agz2vJkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23C1C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751681993;
	bh=kuocqrVUPkjJFfXj+hNvKDWtI/sLgmrDB2NPLVW7A7g=;
	h=To:Subject:From:Date:From;
	b=Agz2vJkIZ5or8MWV0UdkFMG8gGWtUq9hwxjj+HYwKs8Ep70iMCU627ZopwI6gDAub
	 WvjzyNDTXOWsokishKPF+w6g4Q/f/SDP522UU94AWIAJJu3To94FO43LglwupFXgcG
	 2jea6AowwVFS6EUoMVSIZfT5Yjjz3dv2+MHuFGGdnTjJpiOFm42yzi0AdSha7x87gr
	 z4XluYffRFRMzo+4qWZuLvIpYRMdiWovLmmLdipnaL7xEFQPB75bSeZmsAX28btkLZ
	 STryi1dUfd9irXIqdqL6uWGDswNKRs3tcETo4xTFqz1+o8gXesdS7pFBQGcAcLN2LQ
	 ILCOphdiM3UWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB7C83F03
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175168199357.10541.9289966278471728381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1580aa3c8b584156d7eff10be07ddf482adbecc811727d44c6605f938371a3b9
Date: Sat, 05 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751681993
