Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462A61E4AF
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786069834; cv=none; b=iqXBLQelQUhjEu4fqU6NtxUxmlQzo4uho3XlM/a0P6jwPPxR9bGAC4ioUr1EYo84TRyswehyh5Km9rX2ExxyHwBGRT4AUSYINt3MoB3/aC1aO70UofwucWhsLZMUEWbnzS//jtA9Lz33MG/4BuMQ1IXbscduj0X3GcVqQ+l/s3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786069834; c=relaxed/simple;
	bh=DV9LrKM1/kwM1I5pGHWuqODibO1wpA7QixzgNyNM3GI=;
	h=To:Subject:From:Message-Id:Date; b=Gr2hy8UA3EIVaE1wCY4daSlF5W8aVRRqY3MIX+rODkIxRgatgfT67bmeVfgji1QV/tovbY43HNbRPAKOUNItETWor2uo2KYnIODbIbBUjVowmWBKDwLxaSfoKBs+kFmIlRmKpubqYMRGzEmI3YY73W2QljVF7BeOFH30N5U4Gm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QsJztwAw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsJztwAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF16DC2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786069833;
	bh=DV9LrKM1/kwM1I5pGHWuqODibO1wpA7QixzgNyNM3GI=;
	h=To:Subject:From:Date:From;
	b=QsJztwAw6JL6ySDPxpYwghnlkp5a9mjSMaiWDy2o8bi03iRYHEcyPQ00vCPrArcgw
	 DtV1f4TuJqpY+LfdENbtW7PYGECGVrA6kxHF4RJdQm7aW5Ozsm0DY2HQ1v0FXLfP5n
	 AZ87vqKH9ezEwg2eHzhFBtI1GJzLPod4iMqUND0TLKbWwkFIZAmxhimDK+xDx91A7z
	 +QuzZgZYWQw6g1EBfsl1KShtcAGAhZiJwvlCgTorbmnuKKuow0MDaiYUva9pUWRKPq
	 4eImIIBLHN/X9weF6Z1f+/w2BZ3Wmvb4wHGcqAoBDedi/ieHUQT/zEHnMtHx7oqh0/
	 H5cohRL0fEEyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB349C5AC67
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178606983369.1782.14852497576340286254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccbe0266f8d101873918becee8188d8dfb141c98e1e488172d97b00f5394893b
Date: Fri, 07 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786069833
