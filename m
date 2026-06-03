Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A2E371045
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 06:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780467274; cv=none; b=Ja6CQ0pY3ZHvbkvSTpXI3FNbRWlE+pg4urwCLvltLP0HopwU0pkxUfZtDahO8rkENgKHTPEjByP1Iztvy/+aN/HjCYE0kLPsljJOEa+2fFZwAIZTSvfxKxB6o7sCb5HXasbMStJx9YgGpOX9Is3eNiBpUbJBi3t0YkmTEnaPtGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780467274; c=relaxed/simple;
	bh=+EQaFNHLCjCEwMl9lUFST+DeWsNKh+JAyFZ9ihmoAZA=;
	h=To:Subject:From:Message-Id:Date; b=UOUydtS8O7+0ffdp/ZyePrZQKIFPYl0xe0M0oC3RvMD6iDOtTM5Q5Du/B4j4LI9B4Ovni49LzcYkHf3JyDHfK1PnGunqhPAEDCAQpMS/YtmWXuoy3L4A5sOYj/5XbPzei8wv+Q6IrPaJbZlTlBToS4GjAiEcxbkTuL6yLcOkBVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7EsvJ/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7EsvJ/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E7AC2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 06:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780467273;
	bh=+EQaFNHLCjCEwMl9lUFST+DeWsNKh+JAyFZ9ihmoAZA=;
	h=To:Subject:From:Date:From;
	b=B7EsvJ/UCrjAXINcZ4Sn11n1NTEQKAwcLHcRqN+5ZfLFlswDOplwAjGZdWVbf7x33
	 4q4qHTc+mbSAkf7MKIzGI4bKvsRkxJIMJqn/Iwy0e+asYqb4EhqAaqwqaSH8/w3xea
	 23wJmvLJXVQ8tDjdanGM1ahsahXm/KwmXTA+X8pI/QgyUxNdRjTXrhkKAaKBKWaxwN
	 NMDiadbjFsmGCg0Jj/gAk6rkp6ZphRAsbze6Quv3yhBF6DsO7z0RbMQYr44OzaC1U6
	 g6Lem12BEoS2d8gDC590mVjKbE9PimeO1SOtXXJe9LGft7aV64MRfcHW3iABi6yHrH
	 3dNXxdM8tVEcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8FCCD6E4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 06:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178046727369.29316.2048492257404493940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1d79017fe034fe3e70b778993f4458e0950be1706bbad6106c6ee53614cc457
Date: Wed, 03 Jun 2026 06:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780467273
