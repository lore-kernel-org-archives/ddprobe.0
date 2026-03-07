Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F064631E833
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772904294; cv=none; b=m9OGm1lc3SCIR8FkHyfGcDhrbyBZNI72u8EqKq1Vl1O1isMiUuRpz13Ss3MvBdD5fPwd4+LJJyj0x4yFiPkA/GUW/8dB1urlVoZXmyRLD4lNgy/4Jexd8oDL0vifWnJQX25cgMwbf1u0v2l0J5I+WAXzUKOyEQ0kJpwPfT43gbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772904294; c=relaxed/simple;
	bh=5ScO4VOL9enb6Kbru6/ZO1T4nR8si65c1NjUoXXikpg=;
	h=To:Subject:From:Message-Id:Date; b=HyzYIxhOQ7fIdOY1W+7xX8w4xgw1DFMbUCJAM7exwJcMx9K06B+JeNW7aQrMX6y6p7e5XWaB2BvmT0dm8njxHfk64zIzLUYeYGTDUX6YLm39CJjcE5Myrd/5Rwbn+f5x89vs3S9p+MWtFn86BOH/WfPaGm+WRozhb/AcF/MA9vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yeg0+2Eo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yeg0+2Eo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B439C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772904293;
	bh=5ScO4VOL9enb6Kbru6/ZO1T4nR8si65c1NjUoXXikpg=;
	h=To:Subject:From:Date:From;
	b=Yeg0+2EorKf6SjeFigPg5JryYdRPt71KlMaIsr5Pu7+MLofshQsYg7G6BkyVznzhw
	 RtKmPlWy+4uIKcwWXU0/HvGiiHeFDCw7iqlke60OHf+ZO9ZJi4dY6Aqwzg1+Cp9GXa
	 M5nLGPyxPaV6SsdBAaOPYxhmJ6dyH5Sx9ZPDfctfkT96FrvCx9g6+QULytLcZFH+Ma
	 kIAtx3IP5XungdAfkfDsA4J/YiM4zWgJBW/UwytIf9JBZfWzSj+PQkcdcaBapd3oLD
	 lQzf8NwnDRhlHLNlyVT9H3eEgKi4GcrVWf53fSlmRUi5RiyB8gSK+ICxL2ac8SP8u0
	 86LM02lW4Fkiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B25F55102
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177290429358.11083.9955288196756480447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b5f47159de67fa0563c9324cbc6b3409d7e1dbc4d053cb3765e4b1fb8ab9cd
Date: Sat, 07 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772904293
