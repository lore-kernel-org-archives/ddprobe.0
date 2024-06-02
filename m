Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D5D5674A
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 17:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717349723; cv=none; b=NYyi/lg457x+r6PO3Ev4f7KSTA8pjl3JDfGIkIUM0AJiA/BYOCQPHqAu7Ygw5AK/vEj4E+CinZIJP38XMLnqGGPSvoahDcnnOh7qtWWnW010SqQnoMmG5/eC5bMlaLKgufzyxvaQm4/JBltZEGFhVUTJZEzEbnCq1YHHzLADbos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717349723; c=relaxed/simple;
	bh=wqPngyzfL6cx1uZ2A1EKBe8JjrsS3u5lbFaOAl1T6ZQ=;
	h=To:Subject:From:Message-Id:Date; b=S6kxgEaJRegxVB1DMw5eLwMQx6v2f9y0UYma9NMsn4C3WFKdWuKXvH132uylBHb8iy97b+ZPxDHKIEIdV9Z3QlIhdcrgHG6VI2vjAis4NKi2goOyJEEAadqCkjLE6j2A+7AI8+YmjBI4u5XAp8GlnVJC+Oyn7TmKiOrTK8sClDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQ8Icv1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQ8Icv1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DC1C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 17:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717349722;
	bh=wqPngyzfL6cx1uZ2A1EKBe8JjrsS3u5lbFaOAl1T6ZQ=;
	h=To:Subject:From:Date:From;
	b=mQ8Icv1gOYwjKnNyBXqdTFIrtjlu5W3fxaKvB4Xi67dv9+wzAiHvBhMlJVqAf0AdL
	 4r7LfioJ/pkwAsNz8eVQlGH3+Mx9RSMjlGaUaQ39isotAzNUePrqLEbOriPFqT0L2T
	 rLbfWfJ2mGNjDuf8PTZiDzCN2Kh8cVHkNteTwiauWA8K2DZCiN2bBbv3afCqnSAm/k
	 0k1BDaPgsSnwxA+WhMpKwLtdF1BpdHq3fBmXBGsXKHD+8XqoDKLiLRt+MsQZKQmD0C
	 sAgZFxBgSdGWan6ld0M/zHXgSoSpJkTodmHYsLUXDKPsgGFGgeKlCsJpUONFBVN3+1
	 IWGPZjny99+NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD07C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 17:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171734972276.32494.7762625441843463247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fdf3f602ba4782f902f071230b648f29a436c0751c943b81783350962ec13a5
Date: Sun, 02 Jun 2024 17:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717349722
