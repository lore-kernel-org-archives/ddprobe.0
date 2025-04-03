Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3D32E3387
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743653994; cv=none; b=i8G3Huiy8VyzWV3EetBc4Kdk+7DvX1yMuUVifSTxnsu9J05VE5HCpr+ZrKyDYSF4Qv1MOVWDn8kGEWRrNb21FryEwpcpLBvAxawgR4WXcqYFrXvOiyuTcmqVpzIuxze3pKdHhxtXRUYuvsYlfDBI9aZGe/jovRwNtmqTk2NDRBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743653994; c=relaxed/simple;
	bh=zmiySuSvD3OUzMj3LntBbhZP06lGSRAIe8J1J6CUdXM=;
	h=To:Subject:From:Message-Id:Date; b=nW+uj1K3iyNgfNH45CS276PkAvky4M8zG843X+DkBUlEuvS/FBY3Bb0mHk0DIhAKG+YHsUoCMx2nmfKDGgva4KeePc6o+yOlq5f0+jxVyMLLZe2ilBNe3Y6DsgKRxUvqWGdOTGRvLl453zfbwATe25r0m7YauxrBXl0ANw1yj4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKRNrjQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKRNrjQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0066C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743653993;
	bh=zmiySuSvD3OUzMj3LntBbhZP06lGSRAIe8J1J6CUdXM=;
	h=To:Subject:From:Date:From;
	b=GKRNrjQXFufxDIKyxbc/0cpwx0loOfuAES/tk3EzXhZCJdm1D27A/DCzdeuGX6WYZ
	 XHFGE7SWD++bXrzdKD2JslgV+lNKoLfhHfq0Zg6gGeB6ojq8nosgFXWl9LVzARKOro
	 gxNxZmBQUPtV3H3medrtlkjrACYa3tIIvzgzgt17x3JJgNr8DGRy7hcWl8TqZ9uTwP
	 YnJ7bc17ocpDPNNJHOH1I6qjkmD4CMSTDGBmaFv+5Ce1WnmZexy07n7652XlatzMib
	 A1dfOnfQQHGYhU7WLD2cHK0sPy9/WsH0SIVeqUYslJImKbqnwbwO+7wGxEn+jo4aIW
	 P/2HmKoRD7yiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6161C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174365399365.12433.5435810118321001756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a47bbba43d2b1511a06fd477f06948b6dfb77bd8e6f03539979a95957890985
Date: Thu, 03 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743653993
