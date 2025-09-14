Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EB6221F09
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757836794; cv=none; b=W325DoyLTOdg59gAmZVjxj7X+M4cKaPrNU1U64LKTM+1OvVtnbF8TD+8w9VFxh4E3wghQ9KCfIQpNDDWNHHho3DdEjiQW6fqNUtG7GJj8Qma01k0tDdNyvVV92PpZS5tSis45YzjJoevfSB2+Awf7lBPkMMAjHA7uyMX2sdJIGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757836794; c=relaxed/simple;
	bh=dqQbWvfTRtrxaDU09Thsw8bZWKPhFISAM9L4fi+BW/E=;
	h=To:Subject:From:Message-Id:Date; b=O+xq/gXDC/SrstEDX/BJeYY5Zj5OOl8Q0tqFICFdVNdWBScG2CigEmsUbzTJtEviCX5haPjEBLvcdYJLbeT9IHM2MYJJdZNtn2af738rO9wUIET4xr/45BiZGrYByjsZELD5jrqJxJm7LjPggvFckbdPIkyf1K3HBbIL2V4Hqms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5IFCToW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5IFCToW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF59C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757836793;
	bh=dqQbWvfTRtrxaDU09Thsw8bZWKPhFISAM9L4fi+BW/E=;
	h=To:Subject:From:Date:From;
	b=Z5IFCToWI1856iZdce0Xjvt28lmIzIsLoyVDP70uMSsG1UowWAXscQq6hJ1SeIFdf
	 sfkotfeIASj3/g443YfBlaUiKagXUyPJeXJ76dVtnnEOse0Ft+tihGzNV23LVRXQi4
	 +MIfvq0hAFKOoPnygyjYrScQ+AFF11gIEhUzEyAbV3+uOozxmJ8ebB/PGysa3kBhq6
	 8JPc/UDSrnx2PivU6dKbHmQb4Z+4DuZ+aj74ydoXhYnvcUfGJM/m2jgSGVliWTo07j
	 6rylUbctsr+lIbaKmqxHjV9/4Xo1lNTCbIsY6gm9JcItQW3rJlw3LzEjQ4hClQ7VsH
	 kWfVg6oi1wkWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9035CCAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175783679358.14483.9254944995779739711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4744607f199148dd845362f224dd0671a3676b459e951957cb33720e16cad876
Date: Sun, 14 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757836793
