Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70248342CB1
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 04:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775622334; cv=none; b=t8XBZpfnJyfTzTUE6PwT5HgD3CcVBL57ohTboLdBcHT/Pn5HS3BFP63TzZXvbUTnTgUvEJfMo2Fuu/QZc445Kdgu0NpULyE73OSSKDhIxnOjSvK9a6ikELQEkRJplXGVhARNk9qXL/5z5ZOz/9QVib0GydMNbcrdNE9kGYfEa0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775622334; c=relaxed/simple;
	bh=BcK4Be3ULzBVv/oM7d7m8/cHL47z5R+PNWzK95Pmo0k=;
	h=To:Subject:From:Message-Id:Date; b=UezSA0gBmOl8qqbUeMX5cT4mWKhuGKiH+fBr2D7w0GQcYC7nVBJM1DCoDkTZwM//POnrRDw97lg6ApyOA10GgLdFzl1ucFx5zVce54UiNMdKfzoW2UTIORKuvleLr8KUnYE3QMPQMw9f7+tZAEayVK6Zh2PB0AvuVkKptUUH4Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nj61J8eN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nj61J8eN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 105A6C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 04:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775622334;
	bh=BcK4Be3ULzBVv/oM7d7m8/cHL47z5R+PNWzK95Pmo0k=;
	h=To:Subject:From:Date:From;
	b=Nj61J8eNQcRuRCsL9/IAz+1DoZDhEabsQCbCl7WTPfuNnNjSVemD39eD672gGtJZk
	 5q9xT3Q4arhktFTBTpOVnaLwTUJrBcOv09RUCr93CQW5lkdsETuRCMt/Z9dIYudbLw
	 UKhBT1ADkNckilIs7wa1DA+e1SLzyGCfUAg6rJ615DuYps+uYDlrXK34zs+pbd10TY
	 ZDvJgkZTHbxRFR/rPgiuXH5iLQHPYUZN7vPC2XQ3O+mpJyeeiflNK9eINNiaMG/YgX
	 kGJ5ZqvbwlMW+GlgxWvQOAYgDxduwDPQc/jCH6l6Fw9wyLo0FII6FO+YLrgY9YErvO
	 jwJjNT54gF5gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF800FD5F6E
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 04:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177562233388.3015.11114197356502593130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39560d80f1dba2ffc368ecb8cd25cc3e5f5732481a6ec7b5de3c10b91dd6a471
Date: Wed, 08 Apr 2026 04:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775622333
