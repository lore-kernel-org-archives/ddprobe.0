Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C90A748E
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 09:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719046943; cv=none; b=GWgQSy4rdoaVGLbiq39SzNSJ1AgAzb4VIDtEFDYeVjdhs4YP5Y+6gczqcnkhTd0mh84qbIHtuLmvhBC6Xx/qlAXSPAXJeWx9nRTFcoW7TtqBEEyK4WqorW432MFTuoHHnWUDCYhdpgqOSM6Zv/dR388HbeoTUJEC5R0cEAKQnpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719046943; c=relaxed/simple;
	bh=hYU6qhFfmtKz4OVryDygJvCsqPPIaJ4U9EKBguWyfZQ=;
	h=To:Subject:From:Message-Id:Date; b=K0di5gFNn+3sUEP/p0LvkTDFnTqgocJoGN67L9c++XV+SMSr3oNz0p3xROjKKDnANOFLfpf/jZax6I4mWMHwfnHC4R8JvdMP0vFnHao3nr7R2Lu9ITIUYG6G+MwC0WhvFV6TXlg0GFFlubvQWCfgDCSGJ926VECkS7wb/oj5jGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fy/lXIno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fy/lXIno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF3B7C32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 09:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719046943;
	bh=hYU6qhFfmtKz4OVryDygJvCsqPPIaJ4U9EKBguWyfZQ=;
	h=To:Subject:From:Date:From;
	b=Fy/lXInokGjrtaqVHHrKe1q+NbxoAPTzS/CAFBvTLUyzzUSjIWtaHWo5NxEgXgDY0
	 JdbC3K05X04k4L56SCcuNsyNcXm8ntcVInt61NhOrQD8nLksqKq9CfGre8z19JFoJf
	 A74B1KeP50dG8Xe1SF+lLDyT4ajp8LWtjHh8M/rmGZXu7fiDsbPqIljRaPuYm49nE3
	 3szwM3PVrvZRvUVcMnXOyFX2FPzKO/HIpt2dndLS6QMrJSEqKYHNyE2Gh3whz7a/pY
	 J3o/Ygo4Lg2D6xgwzC5lESJpcKcUs88C4LJqjzmfIs0Z0vWYOvMrV+MVqCvVTbDA6P
	 oYaU7q1dOGJ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D63A5C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 09:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171904694280.24813.16022722163760004570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fb0dee15d34993738e53d4021ba2a620a7c97709d0253b7b6eb1a328b505a39
Date: Sat, 22 Jun 2024 09:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719046942
