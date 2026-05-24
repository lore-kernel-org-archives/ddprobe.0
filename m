Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346A637B03E
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 23:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779666754; cv=none; b=gk4ooSoifn3dIi5T1fGcOnwDtmo8tn3Y/eguLe+zuvB/bkB/NRka3F302sCHfAg3aD2JTpx71E0gLh49/ObB1Z6+R/EyZXM2TGJ34Hptg6+m1B03U51niZ0sq94SbnDEfL1189hdvMwBhWbVW7XsLYxZi2673erXLG6gOMofmgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779666754; c=relaxed/simple;
	bh=blhjdYTI8+yMR1srrWQj4uWe3zXaPVPlTrshI9ERAF0=;
	h=To:Subject:From:Message-Id:Date; b=MbfutlUKqXv3ljpFSDop/DM7XhBfDHXKu3M1kSRj3AatNXnLjiGJE+aTt6UKz7+Tb+q7BXGVxZZC70Qp4nRsUvRUFo8p5S3vaZG7E1ef8wCVP6Gz+zKqmhSNp4g5rlzj4InwX1G/8S5L2822Ab99yk+RQKJYoPL0FsQJ8HKOIOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjNQjIVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjNQjIVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C70C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 23:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779666753;
	bh=blhjdYTI8+yMR1srrWQj4uWe3zXaPVPlTrshI9ERAF0=;
	h=To:Subject:From:Date:From;
	b=UjNQjIVHLf9LZx4qLCAnlt92nwjm+Uis5gDLdfWatlsnQ3nCxPM2oHrrV7iRHHCvX
	 WtRzC3eKStLyUKyWvkNMJoSwr4HQwVJy5+5bfI4ZVv3VekeHGJ6i9weu+V25rOYb1b
	 3RsfkMbAKif5uIyIZ39ibfNEuV38tHMchWM37zFu/KXVQxCl5O+S1IT4YHrSHBQYkR
	 rSLddtx9DI+GcU1pDq3fVVQU7sSABmrARJ82mOQlRmsIbUK3XgZA63qiU0nXpbdE3C
	 hqwoIycUv6Pk9z3VjoyB7RchP4Kj7FBtLJZDBZ8CtC5GDEtZC0jRW+SvuYiVP0cpke
	 U9dTS7x4nIcJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0FBCD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 23:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177966675368.26179.15399114286975656853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ad56ce467713c1b07b718cc544940a3f1a6605b914dd891b8098267aa618924
Date: Sun, 24 May 2026 23:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779666753
