Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A718323E
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749385194; cv=none; b=Lvmgcghm1baWTqjhCaRQtK7WkJxxXeZ4B4tvsM4Tn6U/yMpNAWrhoFu9526c8MT4ZI7NQdgyHXAGxr0TLq8LsZECgUUBxpQK8ARU/yH1HkEPdDtyJ7Z1lgfhqiUHwWl10Pq5oEcA+GvU5YQFXZO6pAX7apX8/x/KIH78an5X+xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749385194; c=relaxed/simple;
	bh=HhU5RYVAR5DpExGZJxaqSqYSshbtNAVYzEucc49xdGg=;
	h=To:Subject:From:Message-Id:Date; b=HdVdlaQzsqfhF6sl8P7Hvjf3FgxOD8oYjDUvTcDsihJiB7wgaOJNq6UcO9WXlz1W4rH9Kk/V+Hbv6Kwe+ikwxifc/2m+B+aEcZnITMZcBXOcOirAlL4s22mQi6i72ta/XK/GvNX/uZYc+LPimaCSezC5s2W/l7wBxmDJj9AgGwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBvYsv9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBvYsv9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7267C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749385193;
	bh=HhU5RYVAR5DpExGZJxaqSqYSshbtNAVYzEucc49xdGg=;
	h=To:Subject:From:Date:From;
	b=mBvYsv9JGYwUokHDWhikAIZngm6xeGjUgQPAV2JikEkI416tzJkXK32YJhYuJ1xrs
	 y8+iRmTWLFgSQCIn6nK8sr6KVwzpRN3HBVGaNwaK42CRnA82I1nu5wNvUfHrfLlJI4
	 SrSd8q3aKPmOTP2qHApx6CvIz1gvlMYAC7QyRZM7SzzHL2yBrSx7JUmf1A9PSbmRuG
	 MwXrmr6DieExgU/pj/E1olrM1QW7NyJytyJqBMaaeLSFtCvjhcDMxg1jhmu6l9iQG4
	 kD0aVlM9cHojzTbZKO90FgG1YNZReGyTOMrZp5BgctZ7rOM8yd0wM5rThuXv6dbbhd
	 dOyP/Q5iLyYLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9355FC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174938519357.28833.2401019119359360433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ffda589a812eb1b51530aa26c90b619a94c5b6bdf815b18478f11406df7235d
Date: Sun, 08 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749385193
