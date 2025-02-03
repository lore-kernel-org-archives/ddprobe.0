Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442671FC107
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738572354; cv=none; b=cQCdirHuHeTh1UQ1v4Q2K6EZxtcL9FIkTDUduQpphDku/nzI/gwK7hdFVEQ/Q6mJiy2Pis0nDI7N/CZBfYl+G8OuX/A7etROYSXYlrH1oxutTwj4ngKHjrqWlVXAvrEBadGa8H7JCQUPJSMpL38jRFkj2iwe5Ioe4WyDP9CRO7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738572354; c=relaxed/simple;
	bh=E3Q4tl8jMeI0kGxgfrEbPPuqUdrvXey0jzkeI/krZu0=;
	h=To:Subject:From:Message-Id:Date; b=g6B1+Ac66qR+lz+/R1B7IR0EmcdqREovJpN9f1BT3h1VoLxcD5JiCVpnqspUIAaAQdVvGiwOWEu92B9K6fdqy5j9OxC7uNwac6Ett3FnA26rCadmkB8PbQzn2bQjP5LUifz7Nzxqwy0uym1X4H/fJj+Jx/czG5Mxnf6Y4/CEQlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djt/CNKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djt/CNKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA526C4CEE2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738572353;
	bh=E3Q4tl8jMeI0kGxgfrEbPPuqUdrvXey0jzkeI/krZu0=;
	h=To:Subject:From:Date:From;
	b=djt/CNKQPfgPxHYrOhCvfg4gj8Lz1LgaRP6DOmhYiXKZD8MZarFd4u3dgroXcUZVD
	 ULTLUuH8T1sFDFyQs0w0sUg+Zzy89Y6YWOT8CEQhb0uupLtGkgJLt9ioFs+yOFn/zZ
	 AoY5zREhMIt4zibeVkE9mYdkDX35wjdOU9l1kgyVxtYwvgmsXfz8wNWLBXz7P2o9vs
	 0KiKKxXA62dYbsDKWWXPq90gCHQ1LBdphemt28X/zDiUdZxcemITsReLRAcZw0q132
	 AFs5rUfnvMy6khFbJNg/+GirllFrZnGHXsL7JarI8JVh16aVLweEPyZ9qGUa1yT70G
	 ugrNReuWboDSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9667DC02193
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173857235360.32365.15757820507355335940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99fe35742a906d3e20a01313acf2d2ee3db98e03f594261134e1a001924dd941
Date: Mon, 03 Feb 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738572353
