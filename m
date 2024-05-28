Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681B13A8F0
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 05:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716872663; cv=none; b=XLiAZRbQKAm3gK0cmfk8yiFHx5MZnsXJOM4FYXLc6kWNkQc2JhaGUK9p7HeKsxgHuy/k3eVhv3w9Vuta1V8u1uoDwNglcFgUhv82/T3VbMMHe/GUIIQaA/Ag/MFsAjmocjVR3U7vprUXdjSahbMX73c5E7gA+4iHjIDgbBnnp2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716872663; c=relaxed/simple;
	bh=Usd1SO3Rq+n1H7I5Dd2NOBUHtE5NTqOml1YR5F5OSIU=;
	h=To:Subject:From:Message-Id:Date; b=hHVX/k46UdP9lliROLeV2+j2ifKpPL9+HtkX7L5OWcupUEVSbY3s7gCGovufq4eVwe26NjgUtzAL39KZCr4gyxBv6Ug6B671YNlalRzM3peraaZN5ySNvPIkM8dFKlwMV84R4eZ7tnXYLebssjfe2ifKCgQm43EW6pYeCgTqe40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9AAT7U1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9AAT7U1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE5F1C32782
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 05:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716872662;
	bh=Usd1SO3Rq+n1H7I5Dd2NOBUHtE5NTqOml1YR5F5OSIU=;
	h=To:Subject:From:Date:From;
	b=B9AAT7U1Zn6x7aUVhgdWC5EySGvFDG8rmVJNL6qCIQXm0YL8r50Z5ZISobbxTlg2s
	 Qk8Bhzvs9f3AQD2krAwZ0WK7/OTQu3fSrslK42f01+3SnX6Vk9gRamxTNbDlO771gB
	 swXr571ZY80dR4UI84QCpj5oI8hOJAt3PwvpVgMkDpHe+NQzqBXFwENSl9ku+yYaba
	 j7sAMVyi/cap+F3ZPyXORgED0a5Ner6CK7C549OUpBgIuliJiTGkzjnBk5aQizQnPz
	 YrCf8gB72Fn9k3GhMA535SSFzKpgE4aedtMorfZdpdqLqVfZ9+/ptIYwpUUGlSLKky
	 h2/O/+NFPq+Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D0AC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 05:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171687266278.31868.859255412836216330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d3ce6c18fe6ff665d79e7e170107f0668ec1dde45f80103bb55244a7a5e792c
Date: Tue, 28 May 2024 05:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716872662
