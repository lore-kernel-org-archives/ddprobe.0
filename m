Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288565380F
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721594154; cv=none; b=gkCweAy4iI1eNXD8LJUwF8C/U9TchrNVLnGZQ2CtfOvLCiDLZkhgX31N6sNiKe5gg0mVMZUNjEA6mayR0Bri36e356Il3CmVKRR7yqfPwQwr6Y/Baz86601ZfMchjrR9lqMOxC2gS7yefEgzz+tQH2KrGPkCXn4DFFOICa4+Xqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721594154; c=relaxed/simple;
	bh=JUdLPVOzXuZqprUjKHozKlWrAK/sVj037LlV0k/0LOY=;
	h=To:Subject:From:Message-Id:Date; b=cLadjnZUqQicGbXyYzhZM6Liwxs7sKEMBshHPnowesfpoA5ZUwbIOZIOlXmJ2hFalVlkqEoGlIjtkzCGgMXFc2dMAVQrNMM/zNc6aj9yR3+RJrCW9XrUi5slGwE5X7hrpm9rGX9nHqI9LzaFI5ieTKeixVJqBHJnp4G7ACjGGUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXCYt4uJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXCYt4uJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2690C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721594153;
	bh=JUdLPVOzXuZqprUjKHozKlWrAK/sVj037LlV0k/0LOY=;
	h=To:Subject:From:Date:From;
	b=rXCYt4uJKSOXmvrwmyGV3QPLxOJS1O5b7GvrtQRXBTTLDEKmP+0IHUDbiPu6rWD9z
	 G8Ze19b/7SJe/lNkGjmhBDPj934NYF68j0cjLjO9hWb1LmM80+W0mLSHu9Qm71Fd5f
	 xcNk7c2BpTSjmZ0drHv4SaaxkzbQCKDzrneV4k0Wk+yNhU5yIUwb3EBAEgUO69dMxD
	 QKsw4UiycPIacWTn530qV6G1QE7loJkkXZkxi4stTP/3BIR/Jb3Asj9YNbGQo4YMiY
	 WE9PigxzDT3OU0m9HtMex5riXooaPkw2k86MA2z7NUtK5c65qeYfQMWPdnUzveoSws
	 VJdBKqCIWcAZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1EDC3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172159415359.27555.12207207138726650140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 206fcbba913b8157e179527bfe3f089474df70d4cc60f110153dda64718882db
Date: Sun, 21 Jul 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721594153
