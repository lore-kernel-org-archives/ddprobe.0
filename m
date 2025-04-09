Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA2225A33E
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744184994; cv=none; b=VdtuaTwZV52K0SS1AXap6+d2dneJsmyFRvDjxvV7Na6gQ4UP+OjMh/YYChuGyLlLC4MgT+VYwINqcXO01lJFeYGz97CtGWdXglZ/Nh4avVwUM0mKLqa7zD0x7G7V3TIBiNqQg9/9jchk158aXhdloA8nO4kW9CVUSsC94tS7H2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744184994; c=relaxed/simple;
	bh=m3B9Uezk+QSripPmve8Pow7VeU2BiTuCDW/Q3Mj/o50=;
	h=To:Subject:From:Message-Id:Date; b=W6r8J8narLTLyX7ez5/8gqXUoqp4m8YYoFfV3AJ9B6wNDO1qdN2wdajfKbMrEAx5fjJnXAyOI/WkFY98ltqwVQCSFp6UHfJl3GOUbYoOpDXPo2VGi7zq7TYq7zS6zPWXwHVF4UTMMFw/3qBe7AvUP++8yLkNiGHT204PUL2w3v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rv1fm2Yc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rv1fm2Yc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F73C4CEEC
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744184993;
	bh=m3B9Uezk+QSripPmve8Pow7VeU2BiTuCDW/Q3Mj/o50=;
	h=To:Subject:From:Date:From;
	b=rv1fm2YcmL/4onDC1eQ/4DR/m8zFivM8PY2lziILwc9f06JE9I+gpK7zw128z5n4o
	 c926FiKdL/uMGtF0WZBtc9zPnbGuJzy5wUrHZNBJoZ1dwRzRZ8lC9tcBqeFcl7I/44
	 rA7SQ85nNLiLysPTYp6/T7WOFcO4qCJwn1gPG/JEyQwkxjocqFgj2A2O4g4o05Wp4/
	 bK5IOvGA7AoM5GtylAktUIU8MiDvJ6FcdqO4HG05rlIOIEZcsx7OMYtlUiiPGMI1mP
	 8Sl05vdJp8QMdrf7QaxdhYzeyPvJaFaW1DNNXvuJ9TI/Zus0BBS90aITIsWHREe7ii
	 j5pTsQE7cbF1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FAEFC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174418499364.6466.5275351705282686409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c33cb507ce365557222793fb21fdf621cdb8bc0849d0b6d064668dfafb6d4497
Date: Wed, 09 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744184993
