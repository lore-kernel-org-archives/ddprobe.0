Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3122428628D
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 02:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739933934; cv=none; b=hkYRZW9QdXEKcz4qOxV9aA8OGl5UuqksMPXjmpmlshCGe9KqtTVamk0IiryNn61fAYqsa6m0SNvIrWhM+lUxN+YdtdtilUmcAjbAQHmGJumY254I6McL27nvRoBkKs77p0sxSLHnO1G99cEEaj5o4Pgg6uCs/oTSGFMnLh4+vGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739933934; c=relaxed/simple;
	bh=oBQsdSZcW46EOkbYw6B74ll9A2GEEfUexh0xM+iy7vM=;
	h=To:Subject:From:Message-Id:Date; b=IkZJ+pCnYjNGiIRLaSwpTo7uWGHoHguKzwLiQxg0OP+ZibakbYJ3M+E4TtaMFEt8biVyJIRr+DoYcnXvF/Aq5gzUgWVtF1Xpppm9YVMzE3FJSrXqvDX63yYxIP3Ov28DX0sFwfLNXiu0/iBBJL+W/WCFaTkON0X0Jz3uQl74k+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bd2StZ4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bd2StZ4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA741C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 02:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739933933;
	bh=oBQsdSZcW46EOkbYw6B74ll9A2GEEfUexh0xM+iy7vM=;
	h=To:Subject:From:Date:From;
	b=bd2StZ4biWbnZtN38Ua4hmChybE+2hIrdv6c4R7d1pGDMZEiIvxJ+mmxjX/Z215+W
	 hquLSEd1lXOPDitAu9+613SxtcghMQlDTws8SmHBSpPKMZGoB1pgIvdDb8JZhCNYtY
	 pYbZhwqqO1EUP8hLSTJkULc/SCjwZypOmIPIlyxXPvK5WccoUI2Q7wr2G9nA4Iwtkg
	 Y+o0mqjj8d5Bz2M1OgxmqdjALNt3LSibNz7QuWTg/FNS2goQh6u7EacQPjOHzN2pc1
	 Gj31dtKfmNZf4o6sLPvovhmDaNExD5G0slG7RntSnAetIG2UhdsWn9UlM8vMN4dA4a
	 YTQA5xCYrWMwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ACFC021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 02:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173993393360.2075.1897248760497314083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f0b2003d9417f39a4b733055193b4a1d8465dd9663834e32133ceb0f5d0ec5
Date: Wed, 19 Feb 2025 02:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739933933
