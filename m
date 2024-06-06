Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABE31E880
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 15:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717687643; cv=none; b=uJ2C/eimUVNaCkp3U++FTCxAYiMnYA7ugkpnXsNFHqMj5Fubum/Gc/9Z+6IuQ2/9IcQizCV+T7QwO2YDKyUHmfs4h7VmqWaTG+GwuDhXF3PxtSMq2jAshC8CFOif2dHYNpBgMF99/CMFmCCUwv5Xu2A5MNEmKGIS/U5gqNTfnss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717687643; c=relaxed/simple;
	bh=bEgx/d9CXaacfkRdzrVCcjZ/0XsLm7o6qgHl5cNRqds=;
	h=To:Subject:From:Message-Id:Date; b=Af+yI6h1uNGiyENYc4U+ErqNX1AfmBSgFuQRMc9moJXSbQymSw0j6Db7FTHo7ttkBCogHgQg9P3XjLLQZlkAV6xw/KjHwo2oDPRf7d2F2jRKLHRcnPforaYeoC2fLyEPprgz3EvigGC+sFwhQCviE0i5h83bVyn6cWmPLTOHbdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCjD8Rm7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCjD8Rm7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE16EC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 15:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717687642;
	bh=bEgx/d9CXaacfkRdzrVCcjZ/0XsLm7o6qgHl5cNRqds=;
	h=To:Subject:From:Date:From;
	b=LCjD8Rm7tXQenBIr9rypUfQm4iCC3HyV2mO2PD4nawv1Nbk0IJPAOPEZ6O90trEi6
	 WvmLz0V8hFVccpatCv283IMugm2HxdsJFkxCARwgZvssd66dVvHKF+d2rIgD16liKB
	 F9Xe7aoX7i8y1JNEbYMrZbyabOY474cTIv3bdXsbEnWbcpwwX0kgww4jEIpDuqKC10
	 Y7byKJLrPXlGvtbQmP/C8lnagN+31jQJLbMoV1IObAe9X4O8PhNJUy+b2s4ymgAoR7
	 Ub9Lz1fsV5BNu9a2BEb3/NJxgoRZOfqw73KKmPEXwe3UsMcYfOUTa8SOAD5cigeRiO
	 qt0z5TahqFnlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1227C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 15:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171768764278.1042.4428622621445609457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 287b6d5b12930507de6ae314de79a92de616e610c15f94226ee34d86839d314d
Date: Thu, 06 Jun 2024 15:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717687642
