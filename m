Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8652C032C
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788231634; cv=none; b=SJ5rLSBuzUiM3HyKO1spp6Vn2/5+cd+gHrL/MCzSF1X4bGDFHHb9fKzSokWIKMFc4Ka8+1CQxtap4Jx2v7G74/A6nrwuAjFV5ajE9BfRxJbOKQy042vl+hF8vJYtFKwznhcDt5BTvif+LyJlPWtHocWAx2/Wcw0QrNDvG6uxmPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788231634; c=relaxed/simple;
	bh=PCmQZC4CfGpV+Y/OEQNXV8UZg78B2kiu9C2G36kdIi4=;
	h=To:Subject:From:Message-Id:Date; b=Xje1vPQaRbMCCsLjHu4vobFWfBDxZ0P62JXRmoX4s4U+kiVv9wSc8qV4aP2ptTwzhQxQzQlwIMrRNbyUNJbpepkXK4ub2KfpiFVWgM4psxE/W9wU/1yDou1v75Kc1kSuYC7/1pZzhEqA2Ig+18JmqHQMOEpXVphUwBQcFTvales=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIajO04C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIajO04C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE0DC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788231633;
	bh=PCmQZC4CfGpV+Y/OEQNXV8UZg78B2kiu9C2G36kdIi4=;
	h=To:Subject:From:Date:From;
	b=BIajO04CzdAgJ01zqtFvpoiNUt+o7rWnwz2XV9MZt2lPRHy5mQ//WVOuo6SHkLyNP
	 qK2vuHW2Bjm9j2/4casQf9oI0mYkpjKyJl+1duifWbzTojJ6jivD81+72cBqbjAAJP
	 wJ/r4MX/N6DHUHoiA2WGsahTCgJQc28qqqrQ1BZN/h6Jp9hhp6wRCTKjRJK/2Wz9Z8
	 /KBn6RKrX/T9Ir0MujorPM3XJ52Bs8P1WMUa62M/94+p/XGVeqJKAGgvU1abJ03Zzl
	 V/E40LCps6KKt4FfKrTsaNpd8btgH6b93uz5hFTMssgVmaZ1WyETeV0oxDu2BUmKK6
	 aVZiDSBrgMAFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB194C61DFD
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178823163369.13070.7539199739161012744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae68749e18e870d23d37e2730923ee433dd52ce777832ab8aec08f44c9526e21
Date: Tue, 01 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788231633
