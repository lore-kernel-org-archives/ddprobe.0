Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3970220E6
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749520194; cv=none; b=mRfry0R5eqvUnahV4oDUeZtj+9H+xYGkRrxzyR+9ML75L9LMi7Y1ATTguXL8bZW/m553Hiz06YaeURGN8iM7GU+iFr7r6KZbbQwgqltqVUMKN8STpLDN9X4FdAFeMVuB7I+PWz7/Timn0GOT7R0IvKAtgq4dX+nCTn5KZCQuB+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749520194; c=relaxed/simple;
	bh=kXh89lkFg6J3rn6Yh3eViXvF4QLYRzuELjSVg/DY7lI=;
	h=To:Subject:From:Message-Id:Date; b=XtY11OioqmyptTrchTNKV2Zca9Y39H8kTWZXeQvLjkXwITob/Sb9YE8yXKn74bbG0ljZ7eiAQZRzogtDMEvYMxuAAOuiXMgXtUS0s5KKCHYSgwch5mqbqEdOmHec9tvs1bzx30TuqEXDgihh00CQCgr3q9tgEwrjG/4c55Qu7kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NcQldiaK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NcQldiaK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7706C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749520193;
	bh=kXh89lkFg6J3rn6Yh3eViXvF4QLYRzuELjSVg/DY7lI=;
	h=To:Subject:From:Date:From;
	b=NcQldiaKo+rYVLGMTBKIo8kSr3IsSIXtCaDKR0/QLXNi5/Uo+KXDARSftg9MBHPRx
	 W07c8hVhLoWfju9DiMjOQl2AxgPsVp85zt3jv9Zymj3hqtNmgioV2aq4iQWrHX2TcD
	 X7PiMbSYHszTkvaKR/Z4IfNNz4PLgCug7leHgncV0hAbDpk9kXYg0IoEcnZrMM5Bvh
	 Q3ht3wkzaj9sVsRw8PhJnWvtcPdaujIrVd1Ua2fM3OHL1cSrV0rtHOYbhMxqs9F+j/
	 ciMMsFsl26tuG+s19BUHtSJK7SpGnMPlMQmJ7R6Z0ORtBmB/sRyZ9SA86z/LMqWC31
	 Yqa4atQJh1YRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DCFC61CE8
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174952019357.24214.18183165779859402625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e321f77666c50ebb5fed5f34e42a495509bc427c21d89fa304d275379dadfd30
Date: Tue, 10 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749520193
