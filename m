Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F37023BFAD1
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 07:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783324717; cv=none; b=mawzyOP8K5BlXPXVDhYlR8GYRDI9dBvGozRkxnGjTYWgPWs32XLxlN6McPxrf5cssKdPvkVoyW1Ahvq6hDK5v0vVBgoPjwUxI7sGC0F+JhPxiycDW56oP6y7mBI3RG/Xujw7rKkEjGuaGN49TjuHG6gwt/WeMQ90G2p2IgPSi+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783324717; c=relaxed/simple;
	bh=Bkdu3wWfEExMbr1jXYlvOGsSe/Wcw3GOsODF5PfI9Oo=;
	h=To:Subject:From:Message-Id:Date; b=OoluvDkS29nzLPA7VPIRH3Z/sJwgMyayZ0Kui59uoc9llmh/XKwSEoq4cpga6pmTHrDDsfVWhaxOq06AICd8515pOmiQojYn2yMzOoaXMFtkNKM2KGNXEZT7TjFFpDfk+p6gIBE+ldu9TuvrGVt0aWqRjMNqtcK4uFcTyG2IKmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OhF9ywdL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OhF9ywdL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8CA8C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783324713;
	bh=Bkdu3wWfEExMbr1jXYlvOGsSe/Wcw3GOsODF5PfI9Oo=;
	h=To:Subject:From:Date:From;
	b=OhF9ywdLiYGwIX64lugxa7Jtq209jGrRT5dSk4GHZvMU5y0DatMJ3VOMgczQaIDWW
	 6m6Ssrv/TOcQY3yHuTr84C/zd4wZISShLlaB67FeambiHRrpTH81ppzgTq769XF3zL
	 qlWVuGbFPPefUWVyF3/lQq7Mlgt98IIB8PCeuw/IK6JclLqMYgIW8b+Vqq5/jPWJSN
	 yrYYw9ZOAuE4EMZD3o1xzvyHkR3icCCpxZNZXOyLpSBTlA7zT+NGRDM1j7Kmwoxx0T
	 2LNredtlkPl/Rz4Fy8oxCgOFdBT5McjnHtpcvcNFJe9zm3Pa3J3tJFp+hUOiDtx52x
	 ZbiADd6oRGtSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CB4C43602
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178332471368.26775.1550787373441718376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 275540c86ed0cd3b59154ce74f1608bb11bafa36a7f95cd582eb894630c3677a
Date: Mon, 06 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783324713
