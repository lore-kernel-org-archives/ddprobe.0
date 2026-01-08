Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEA2466225
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767875634; cv=none; b=klEtcue/dZBX88aqAfIDQ7XvbPXyTr6WITKdojohAiZt6SuE8UlyGxt6jTZNvPQxARI6L3Rqm6d5FuRBvwcbpR1YbU0J0/0ta/Bo0tPZzCSOi00qMSTpW014nT60AyRS2lskiIiQmBkKghBS6AkY4Q8S1aZlsHTXMG9B/0yQg1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767875634; c=relaxed/simple;
	bh=I8ky6AG4GzqDKLG3ldeOGOKzFLzI1wdWopdllx5mzTk=;
	h=To:Subject:From:Message-Id:Date; b=CY/fZviDosRjlJuAoZaBo6XDDB+l35xLeZ2/3Mp5/ApkRVkgEVEkzPcT3d3KgblRxOSWT6QLJJh1flkFtv5d05GJKzeA65lN3UR3grpSfyyukWqDMUxNEhepF57qBLYRj2r9auwx9+f9mIf31PhT7O4BHX0EU+RRe8YZ7aW/i2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+hY5xTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+hY5xTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BEFCC19421
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767875633;
	bh=I8ky6AG4GzqDKLG3ldeOGOKzFLzI1wdWopdllx5mzTk=;
	h=To:Subject:From:Date:From;
	b=D+hY5xTqNpKaiC5MEYQsBanp0lfj8i4f5l6JJJA1sRZ3QF6UEpcwXoTH7GdIkv9Hl
	 9oMfKnTIJjdzPPMWACB5ekhF3w3fwjx7o1tkw5vI9UrA6dauggaHlO2tppKjjXRFx2
	 QjuRHUIwiNftpCJINKTXbKpl4nnDgF2HqGY6Er4oq6cIBR4o4L1AoSH3X5fgXiLbRA
	 lIN67Wi/RobmudbcgHr42+1foNLT2lLNnpEPJiuhgq6WhXGsvjiiAwl/z0jEwvRQYN
	 YbRO+84cUDMS6VI217jTrk9FgiRBS5X64zNMp9DD/fucDd/zpGnwuG5yjRYOc4JkdC
	 Ye1sBq3zJYAcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED12D185EC
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176787563357.17419.14571927794866529719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38fca5d5327018b261d984d7efd80f2eec10d9b5c6681e86fb1f6d5050adbbf4
Date: Thu, 08 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767875633
