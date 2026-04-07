Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DDBE2D2382
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 22:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775600134; cv=none; b=V47P+A0Ij+fp7d+Hqwfmaw3Xjx5bvDm5KphLE/ODLREIoFggl/zfneXZVWUwJJ7yKx+thJTYboDj1aHumTghuHfwwFtrNX6LhJqjaW+qGmZ1uGvuL8bL85AHajxbR3DBvvBd+5WWqc0j6YlYdusuD0bTDwjBDQB3iYKG0eF8zq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775600134; c=relaxed/simple;
	bh=KezxFSdJbWG3H+c35j/CzziwA3Pn6yImzLm04MM9QzM=;
	h=To:Subject:From:Message-Id:Date; b=PHG10kqVbB06CldENdP36fj1rpGwbrZc9GBua7KdjIbKq3BDsajHiEXGu+nsF8+JkHX3eJnlipPX6FkjnfLPCcdpGhun5FzRbqBkoIM0GsaDyRzluhGYg+55jZ7znJPGLN2QNBbo5h7/WT+zogfS4swN0IxGyfZiELs5nDaYgGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/8W4EPp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/8W4EPp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 19225C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 22:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775600134;
	bh=KezxFSdJbWG3H+c35j/CzziwA3Pn6yImzLm04MM9QzM=;
	h=To:Subject:From:Date:From;
	b=q/8W4EPp4nYK6a1sDoSkPSgfvbx5JnE+sI+eJi1hWQK2LDZypObR6cq4unkK1vVwK
	 PU0crpNQkBXn+hcZX1VUyC64kxg3E70oSzIczjQn5yVCjewEmQXFqE27wgnAEupdeH
	 Y90HMgLekQdDz4Uq7Shpn8SOaJI+pR4R9mGBuVO98x6ymKrMvyrh8GRHb+EV02h2kb
	 P0kyfrIskFwuxWWs+FQPdRtgVf8AaKEwTPw7+J1Akp/svdEkwoLm4UgJgNmuq/Nk9Z
	 ACHI6B8PmXqkxC1OK9TYfv/6Vc7gHygNkHhQfNHMlvT4SnPcOJrldYNLCTgLPSR+xW
	 y81oJE5OHFgGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D865BFEEF55
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 22:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177560013387.23188.17138438123177679146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4822c1fe748a0842898cadf9ead2ede4de78ee1d4a15e5771cd05036d967cb0d
Date: Tue, 07 Apr 2026 22:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775600133
