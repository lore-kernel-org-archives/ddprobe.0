Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB3D199EAD
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775882254; cv=none; b=QBIR8bUltAh0br5FBPvGIeh1ihMkBtX/BT6pvQY66DrtsCK0hTYWHR0me39Krt5eMQBrZYdqeUtjiaXn2DqBLk6jJf3993cc508XcwZ7W6XEXsYNb/u8vsvCzmSWVtJk4c0NXqBaG24Kovcy4I3Oe0Eho8uKiiFhxNkjGAq23DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775882254; c=relaxed/simple;
	bh=dpeeMq6fr8Blg7hG7xVZf9TnZT/xTNzKA3olFdhWGy0=;
	h=To:Subject:From:Message-Id:Date; b=AmMdWSUuYY2x/15+EbQUHUrjmjDMe/hfvJXppLRqDCf4UtugRqbMGA4n+c6hCQGzGNZNrlXk0A0D5mQG9o58yFEZr4fz4JjMkvBSsOPqmxEEWlhLw4usQzfksbucckUy+J565tbfQd+j0NU2+H7YDoC7JJKl2MZTwuxuKh52cEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfJz1Z3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfJz1Z3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0198C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775882253;
	bh=dpeeMq6fr8Blg7hG7xVZf9TnZT/xTNzKA3olFdhWGy0=;
	h=To:Subject:From:Date:From;
	b=QfJz1Z3NlHHlGFkYsgOYGYLdXKjmpAcchEiuo0fP4C51AWMO+BMipuLTGN7/1bCAN
	 MasolVOC0rFrmYB6JKHU2q+3YHlhsPaIi6nm9L6MHx+FGDnmvx/fAUPCDY0VbyTrAi
	 2E4SLYVSYdLglG+6H5wqj+m6mQFFur2UT4lnYlHh0kMJ6JKuMzeOObymYQ0gtqPoeN
	 aoiKOa/XaU0KVf1Yniy67/ljBNMWDYAvn4FCO5WfXRc6Vfh1S3/4eyqMCV4jsGUVgH
	 kqxpgFL6BYhF4r96CRYOWKcGwiZxAETsoHyW9uJvMpe3n5ln97+1M9oc9zqGreBVeV
	 TC7VbRrj/S8Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6F2F45A1E
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177588225368.10119.8954489310667547353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db755cb0496876d692e8523616bc4a680322bdb1d976b6b6842fb465fc45174
Date: Sat, 11 Apr 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775882253
