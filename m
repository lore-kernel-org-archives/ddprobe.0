Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390221876
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732852554; cv=none; b=JJgmjdin1KnPI2iNp8UNVBrXmm1dsXS6tE7hXz+2cEYgbNXrzaqXgFLsimvU5KR7sqCqS47VWNPOvjiGnENzmQXJlK8VLvUZbxU645Ah9l2OD6hutmSV4pSoOLd1xnLO9T3vIE5DNLdihyQfKHTe55WCJR25wZL90iTEjF9W/Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732852554; c=relaxed/simple;
	bh=cLm0oflwRFssMVWXE4Ol9YzvN8Ew1vuOd9DaI9zyQ6M=;
	h=To:Subject:From:Message-Id:Date; b=GGOKIispXcbg5CV2WGnyN3raK4ijqJQtslfKM/GBDQBUYt7WRjV54AYsKAg40J1EYTNHknWCpQ3N4mN8tn6JeVYDjdIeMTCbZZAaWBRCDcAz/qi9hQw3Zz0pd0bMo8J+GWVC2f8lgSjm0DexhqtaUSdUBLlBNJ4uZRdBpe7IjOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAYxQ6JK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAYxQ6JK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9258C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732852553;
	bh=cLm0oflwRFssMVWXE4Ol9YzvN8Ew1vuOd9DaI9zyQ6M=;
	h=To:Subject:From:Date:From;
	b=HAYxQ6JKee66k++Vg9I0tDG3MTQahpxedpfnHIP2yyu7kV/qONJo9qOJ8TA22JWNF
	 KKj7MgTk0MeqTLXgJd0n3i7ZGDnBY/2lAMqca2ouwm9cv7pSjtwTU2ixmxT+nUOfa6
	 zIicSItB4FiZepMns3SacVBVZJ5ufPJ2NzSpc335beSKwKxARgSPyud7jQUwxE+dhE
	 MYKCuT7BMRqmak/kngmqMeMALgIu1S2bWUq7JF+Ce34tAi/KRbsNlT6TK50k2DVIkG
	 cSLsCyHGpW6XOn8ITp7i5NSr6vRvi+pGgEs1HZYNiaqFJ00VbrYBjEWeR9JPz2wThW
	 YHczTHpD08POQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A5FD70E1A
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173285255358.560.16776641422570782607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7928d84418b6b06bd99b000f81ccb12b27fe391529e934de406e7c5a50d9f039
Date: Fri, 29 Nov 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732852553
