Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0470E5674B
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707830897; cv=none; b=mW20OPzVuqxUL+5WOC7xFr+odKJbKcLSM2tI7xeefc28LeeeaZJVrzSFQiDK4NvsvWasC9ZSTqtiTKZ//p6hknJVlyCsPiGEEPGtHUNnt83KJ+m2Al7FAE/EZgwZ8FGeJP0l4aCKCc0RIKQSWtfJuO5SC8saT01dBDIj47Vfxik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707830897; c=relaxed/simple;
	bh=W2QbMs5oJ3JI/Y/lxAWP9e+4/Ix/Aq2v92XbEbvw6pw=;
	h=To:Subject:From:Message-Id:Date; b=RF1DevtCvDwfKm6tBTG9ukheFXoPtSB6fAP5bXa5hh6LiikSuYvIdlKQv1hcqSG69XqJKSOvuf7/XG52AmS6PD9PXhzzcKIFQbSFYjKSPRS2A2VEFw2tb8qSjv2HlkRPPpoRxhC8AKFDqPa4nVjsU04ObKtmxe4tKM8L6RpsCRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a43k5R8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a43k5R8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72815C433C7
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707830896;
	bh=W2QbMs5oJ3JI/Y/lxAWP9e+4/Ix/Aq2v92XbEbvw6pw=;
	h=To:Subject:From:Date:From;
	b=a43k5R8zCVr8p00PfOZfkv6j+iZk+65w7MC0wxRlEOk0p1S+FMLH4EZQ7n/AGyAuq
	 ETWYQv8/HBbnRRfJ3SsYEn85pKDWyULRaOAp/IZMG/BJVT4/OkhE3kvTlA+rOOYA1X
	 8TZM5GLAZ7d7Tk2tH0IkCpEpNTz4DMGTmRzu6QguddqyQAdROMK+DEhlRfWL0EEvqX
	 aBBgpLbZwriYjCeqyafn0t9IvVLzmcns3iC/9PjQr0VrmXISrynO2WrXLvQAB4S+FZ
	 rElQ4GHLpriPlnNkpvekt86ay0QHoLh37TY4aWLWPPFAmDynFMtv0/tOvm/WE/nyVU
	 yV7ZgnADHBQaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B9B2C4829A
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170783089636.9969.3733302984211346155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b48ea01a78f9fe138f58439887520e0876b3f38be73227ff431b088ff92faf94
Date: Tue, 13 Feb 2024 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707830896
