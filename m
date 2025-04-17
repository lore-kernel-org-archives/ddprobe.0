Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7719256C79
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744912794; cv=none; b=dh1TgNqXCQYcHISuxA29bj87DG0E9r3/FhqB1Tkf5SABmumOZSGm73hQxLv3naj2PoZIjuAcqddTDuYY03TDzH+SWrzi2PVFGyOMFhtnQpgbzpSgjfzzZnb250E6nQzMRphQiW3a7AXqijj2kfCYmvJ7Fak4+wj9pXb58HCWHxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744912794; c=relaxed/simple;
	bh=1gDkNc84ewnHicOkhEwBow+P5Z1VbVNdXWYY21Qp7t0=;
	h=To:Subject:From:Message-Id:Date; b=WDRWCnQvKc7pF5T9GfW76Et2XDUu2uFiEbNIAfAhABqLkkc1oTHOtg54g9LsP+hSiFzhkfrQ9y7m3lG2wvG+wGBo8uFcWBsgJbNhwBdBWujKYjjuiL2cXuKnConiRMPyMpnR6JYhEZKjYJpsqJJVO1l2Tmcp4OHwdmd5ibLK5FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SM4Dhh/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SM4Dhh/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA54DC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744912793;
	bh=1gDkNc84ewnHicOkhEwBow+P5Z1VbVNdXWYY21Qp7t0=;
	h=To:Subject:From:Date:From;
	b=SM4Dhh/r+J7zkisv9h70+iXwDUA5XWueT8mIwHH71ENk1qTqFzCcMTCENzfnHzLKJ
	 edFpLtNDGyt6lrSCDO/1lN4MkHr+c2beEGI/S/4U+pR/JgLktBy7DOH9gOMgRWvssV
	 BPsp0XLt/FzNJ2JlmHCfgkP63Y5mZTst064yyBbzGq+spCOlpq3JRk/PZk2aNZL0x6
	 jwgqkAmKQVtrWUN3TDuPVBVP4fUGh1/NcYmeb7CWiJWVT6b9CN9ocHhrAwYLA/39Z5
	 VXB4vK/3uyzVnYYMRYvcOszLmXhYoZkN0PLw9z8srih+Yr8B5fq6vZYZthp0wIXK3n
	 /uuFtAWL+hbDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955E7C369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174491279360.16338.5589803273992422779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de71b692cb2b86350d55001a8860bdad34b620a34d33c27838be3d7070ed4439
Date: Thu, 17 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744912793
