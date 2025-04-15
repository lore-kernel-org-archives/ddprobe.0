Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F802147EF
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744738795; cv=none; b=pkRQ8tus8ubbC9YYvn0gzxtRHfLHAUIXfek1uiaBMssMjxIMHjzCqL1wYE3WmyUMOL4YVKjGOZmWU6PhSju6tgp6UtCfM7GYQNM31ejELhv2hBiU1O2fQNwY3Ib2hBBHGL4IbWi7vObgxfvgMr69D7+bpsBYJ28vOlxvLWifJiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744738795; c=relaxed/simple;
	bh=FzLJdtmxjjYTP9dJuR5SGT9axCbxz7h+S84ix1BUgjs=;
	h=To:Subject:From:Message-Id:Date; b=akzZqfNppM6yN4du9gkWrd5SHlmkLqWcOGnHSWkzTTUvD4Y7QeORmsH4Qg4276/qgylGtzH0REV4aZf8+Afrfb8ji3uPAdGNfwEeEmC2W9UNS4/O5ofjz4D9wbEHpIQ+ZVxi3v9U88iSDZNXEkE1Zft1KIh99TygoNEtwks7T74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFjtqwy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFjtqwy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6813C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744738793;
	bh=FzLJdtmxjjYTP9dJuR5SGT9axCbxz7h+S84ix1BUgjs=;
	h=To:Subject:From:Date:From;
	b=sFjtqwy6n/1c8CJ/kDEvNY1Eh7DpesqOPVYBItOoeQWJ5hj+qLf6Kpeso2lGeleGJ
	 hbNrRLnMebHuNzrJHweu7OHVDJSt3/Iv+1NKVkMwHCPC+k23Rh3fX0MX5cr+CBMBtF
	 4oWI/t1tUA7XC/g/L02pZAbBAlRyfdSFzYopQeeKxD3PKuL9RtlcZL/MnOHvLmEMV9
	 PHB6f0eRTgfwj/+MjWgWVO3KvnIgmbuPgqh0C23hTEfYqdokczp45cwgjS5iJha1Jn
	 Fy4YAvHYZ+AMF5ciZojaML4SOABEpJDBZOll5V6EKRPEsuWrn0jTnIhFuw+DtJTwK3
	 koThkrRNF3ePA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A0FC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174473879360.10414.7836138008590533530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0301b50f95699c80c7390feac941e181189b4fb80ad96f12310cc3963581a8c
Date: Tue, 15 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744738793
