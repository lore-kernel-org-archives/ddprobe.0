Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142561E3DDE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767227034; cv=none; b=OjBeJsiYLQgXix+5aK8fLBVNlKEqwb+Bdwiv/DxYV5lVfLNVfk/2YaSXWSwvqOrClSa/GgOSOxP8W+4Uz16K9e8ooLQb/ryACNuXDIfkcQ8oqrviV705CwuICNMfAbOFLJH3zLC1XrygE3hV3yMxVoEyk0bcRCEcgMDWK6jnTMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767227034; c=relaxed/simple;
	bh=52WQY2c9QVqmJ9clGV1/l+Rfo9FbSV4pb0ZAJS0wYn0=;
	h=To:Subject:From:Message-Id:Date; b=WI5AkGXRa0hkD2H3JAG+kZiO7objGjr7XwUKAE8pg24E+zoUQgFtyyKhIBraY/rZRIart39ULi2qLwpJ95KVUCoDlYcTPiOsNddTcwQVdpsifSqstAOqf1U5fPXDeZybK6IPXrpLMjsCUsOTJRzZXxtq+8p9WFgs4+bEZJDzIWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+KG6IEq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+KG6IEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1173C113D0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767227033;
	bh=52WQY2c9QVqmJ9clGV1/l+Rfo9FbSV4pb0ZAJS0wYn0=;
	h=To:Subject:From:Date:From;
	b=E+KG6IEqtbo+cLeRm5xkoLFA/G4WxsQnRruQ3FR+MJcY1LJhGYEnE1kZRdFoRg+Nm
	 iKNd8/y3Wbmwf8SBbK7lyqcJPFxTNSMNT4qv5KkpZBM5vqWAQwVi2LT1lv0BXvd6aL
	 bxM4zue0ZKjsGNZXgVBcd4s1R+FuXRhlgsMwgAyMysdebNl9LjAlWxzklnkdtf2YME
	 pYdH4orjT1MhQawQgAQHC30msDYRRJkNL7z7p4G9j283G6Tw32LL97DksGN/igScU4
	 pOdvOI3E6Tl2VnRa+SAB8EFiDlnb6NzpGA9i6Q7sg6OOdsUiWwUf4Xd8+O2i4mpJGm
	 9E/k2khG20dKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBFFEEB576
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176722703357.20593.12180676844342093894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad7516b69f25e46ff4143f2bded13af939f2ea634dcc1c5808620d8e9cab857
Date: Thu, 01 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767227033
