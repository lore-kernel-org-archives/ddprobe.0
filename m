Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E49D2907
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744459194; cv=none; b=PtgI5dZSKoZdy7qKVw/OLh7bDQsAPd1lM9oweMhBQN0TvZavJ8aFjtdmAi1wHP98wugnMNmUuzhKmkDL6At9FzJnb27wW6nb5RpBdqTDBBNlNBk2j0dMagHtzTGD9mtQNDC5P6JPo36P0+33Wt7TT7Vp8fb/CfwbIJV8o6uLoTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744459194; c=relaxed/simple;
	bh=6wsgXbdEM8BspSPOXmXJ11TYtH8k5qCoTQ5QmYLr3to=;
	h=To:Subject:From:Message-Id:Date; b=DwP5R86fpSZZ3mxqeQgYllcokL5fIt2Y7jAC4QFJRJGgN7U1EaaqtSj0Fmkr+3ARZEdb5erFQVJ7c5bRmqDIewEdMzcGx/Vc7R3shANdQGk4Lkyuaxopg7/Xp05fZ0fSzhAdbSjbKo+wEFF0TxWA3tyqkpECK//QanFRyx/Z8hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFUv7BU5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFUv7BU5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE5AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744459193;
	bh=6wsgXbdEM8BspSPOXmXJ11TYtH8k5qCoTQ5QmYLr3to=;
	h=To:Subject:From:Date:From;
	b=hFUv7BU5x1WdYU8GPd+u+YpZCmCQhyNu2xpVTKJlIy6e5Uzg8zPXudg0e0jRxbCtG
	 0tVIfHlTdiVPplmQNweqYIGnTrdzHvTsQtQrD4auFDpwP6st9CYtU/JJHv9Zy0eWY9
	 /k7qNmcNkowyUa+vo1rP6vTokFuLNHy5cncpfj4V0hZj0KM72tXU2/ykRkgmO4l3Fg
	 AdvfuTdrJ9v63VemOsktJH9b5Jiw9XXJcCejd9nudLxQrCyQMLy0ISOjfytpCkjwS9
	 HFYZSYwyxghSu8sguOdBkq6fHCpsOqnhlOCR+xQ0s9TBIySnfKRJd2JF86+Qcg+pWg
	 zVgGOD0wXddDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9527AC369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174445919358.18900.7737371947644728361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707a44c6d2992174658e28841d59825e79260763274d78b7c267f814246da582
Date: Sat, 12 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744459193
