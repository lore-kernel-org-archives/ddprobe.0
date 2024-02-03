Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097CA41744
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706966897; cv=none; b=NS1Iu6Cnwjb0Z2RNBC5JXjTM8ETmPuRyakfZ8r75Hg5R4DnTOkFiLLtNRuG3tK79Vf3C3xNQb9eFJiOTvSCqU0x/qwVl3Xjg4Cx1TVXKp3cnLugH6C7SPCMAS6pK7nPsXYJwgxNNhhR5Ou2L+M2Gt63gtpzAjYeSOcD7XZ3JVh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706966897; c=relaxed/simple;
	bh=XB56WfDjyptCA4zkSu9XUPTG5CkKnFEoHk9XFrDHAXY=;
	h=To:Subject:From:Message-Id:Date; b=N5KegnKdQB7CoflDGQiFif3mZWymZuKavVTQIXC8thZAvERg4vYF9SQUVHUxyHhySc4L9RLNrsYS9gqwU9mgtpAy5rDX5/3nGHbPKmMTVfndP8BG5ZOkrwLKvyTfAKapU7cxzrjO06TOubmyux7Gj1P1o+E6UOH7ENYJhAFrCj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjJLCRqg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjJLCRqg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E7C5C433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706966896;
	bh=XB56WfDjyptCA4zkSu9XUPTG5CkKnFEoHk9XFrDHAXY=;
	h=To:Subject:From:Date:From;
	b=CjJLCRqgUxs/Zhitg9Qa0sAXK32UpZUmuqAXeP6HPP/f5Nxq9JUSgcol4RQN17k50
	 QK69/Bj6Utm41DKv4QNwIBji61K/X3Sga1k4kSeiRwNtelJBvMP0fUU1KlD9USt8/j
	 onQ/dSWaK4qdEUDrQ21HH11suV45wOL9mo55UZt/Wmcg2pmRgOy0bIj+KxwwgED+mg
	 pMyD3ChxOLNZlTfqc15kRYdin9jXQkqP7uJGMfYAeMoWdzb4LcWrKero6mJdqeZzrY
	 dgCUKfZ6yFd+Z7pxN6Tsq9Iw221cFZwOd8TkD4gQjd29S36gI/ftvKH6iROOThapC/
	 Nsc3tN+ftWbtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64159C4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170696689637.18485.13052718479995954913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5416cadf9eed1ae07aff5782425ba439aa25dfa9accf39397954fba2fcc29956
Date: Sat, 03 Feb 2024 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706966896
