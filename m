Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F225179C0
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709444897; cv=none; b=DmM8sSd693TdR3i8i1FyupCYUxfqx0FmAO/iDZXuyPfdx+v6xww6DljQHSsXXMWkO0+dcMb/nqFr/DvLGcfCTcFhVoyaejxGshUDpRFYH4BhT9vSF8LZR1NTSMaTqIJVtz9wu8PqHqK8My21TWdBuV3q1EjuvEJ6MeTDp6HoPjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709444897; c=relaxed/simple;
	bh=HNvBE61zIh5fQ8Cos9b+28LpFJfu3JnkHYV/ddnIlsg=;
	h=To:Subject:From:Message-Id:Date; b=kwadN5Q3Udx8NiWeAEZUmOWglLyWA7+qX3oCwtqIG9XrSxhMnHOcHwK2ROqJe5rd/YDn95zNEMzPt1Qr5gNI2thigL9SHEX1rxB2yvxmCJae+ZHCRrSjLumRk649Zd0aBvGL3lney1sdLAspRzmSOOj+HdFp1nj1nM+kCkFZK6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzI+ajBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzI+ajBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E09C433F1
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709444896;
	bh=HNvBE61zIh5fQ8Cos9b+28LpFJfu3JnkHYV/ddnIlsg=;
	h=To:Subject:From:Date:From;
	b=HzI+ajBfj54BTooxFH/oq7GAGq63uIV+9iqB5AagdmTxLOLm/A3z5ij0oLFzxsz7X
	 2rboXcq4ztLXBmjiSoka43kYLYwiq/f0S0+VJLTm9gEzaiOU42LGjsZYIRHT3JKFDe
	 29iWQsmveO1rNktwvII3QSDSvOmgyCG1wjc9VXezhxNVs8nnE6Q2QqP40D1tY1jOE4
	 ygf2yVw378RmjRIE1+yipR/5ucYcDO7CnxT/85mskPfSX7jF/vbOKO4Ro7PZguqWnR
	 VM8ZsbKwpYK3lm0BJrje/hTwNYTSRWJqW0nRcuSguAn74Q8oPDSHw07ulfhGVMGQfq
	 8IOH+A54jU1lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BACCC48BF6
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170944489636.31940.4122915287642479488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e06f95c524a5e74b4944a1a978212f5b3f48c1cc1a899b0f517a88f8358202c
Date: Sun, 03 Mar 2024 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709444896
