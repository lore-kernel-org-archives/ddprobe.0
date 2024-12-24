Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D3E1547FB
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735030554; cv=none; b=VhK+LytYw6+yi7HFstpzsjoPNtMMbookq4uAduldEEXvv9OjfAPS1F2wYjeq4Bg1RgjqcSfOOoebu5qPOkPBCHmV6NQ7J8nje3z/WmFbC+RyL/6aeDKdx1oN7Aqv0Hjze9PCk6uacvrgpRUadxGulMNiSNuG3wNVYdhQ8OdERao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735030554; c=relaxed/simple;
	bh=BPxvl0humoMzqMUNDZ1gg6qqbNlPkCwhNmNabWLr6SY=;
	h=To:Subject:From:Message-Id:Date; b=adAy83Wv8HwYFSLasrvFOKXxWMwF105bIIZYlWFigNhNEGV73b3UFNyYQJZb+t7POL91h2vzgyLCg1dsGAfEDqgayhpRZ0oq8BqCEK0GvUAh9hg4KVG6OI+XqDQAqrK7bev7k2gKMOHrlMHOyTMvBProbtpHYZa1HYkP9vEGdKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Apo3hUN5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Apo3hUN5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A711FC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735030553;
	bh=BPxvl0humoMzqMUNDZ1gg6qqbNlPkCwhNmNabWLr6SY=;
	h=To:Subject:From:Date:From;
	b=Apo3hUN5t+2tizt2Xwqg5xN2cjTnMi8BRHEHkLouZ7uW0d6EGjX1zfeqRrYrsETBx
	 D1MwRytG31JQWL9RaNTh0lvpucCzH1FA8824/h6NsqDhkjGGL8lPiYghdix5Fc5XPb
	 cO9tYfvGetqHd0GJzJA2bm0RXd4z0LpLxgderUCPCE1Xxc94z+DxN5hCe/fkNRPjsZ
	 WCKYvaccnlhsf5skLf/P6XMpb/cFCAoY0DUir+OF3qIvUQhVp3fvaGWRj3MT1hDZJF
	 gGTqrv87kCAON9suwBsex36pyGZbNWWa0iyPFReB6zR/VOnQ85S+oIPRaUyJdJEZmn
	 95uKpmByHVxSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD75E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173503055357.15977.17426753419431138325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c912ec9cf10b56fa3970d7a34c3b4575184a7f21766d3f6740263b08296b8ce
Date: Tue, 24 Dec 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735030553
