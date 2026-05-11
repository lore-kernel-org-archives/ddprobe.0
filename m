Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B36D4A1394
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 18:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778524834; cv=none; b=TOCAo9AzCdvSEn04FeNJJD6D1zYVUNJDiv6eWHNiTRcLiAuh6jCfrP7d4faCPErcA5BUFjpa0LR57/2dPoNdOnPoAsfTmAHfC0riiQcDNhQyNw4+Xxwz65Cg+MatueWgHJTtWM2pJdJkf7Hsan4E+Xj/IadGxwQJ1gIMqah0lwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778524834; c=relaxed/simple;
	bh=OMkhyJOcpsEAWNpjA1cM1C/aXDtKEc6UjLF1ZCenaUA=;
	h=To:Subject:From:Message-Id:Date; b=dAwssitBt69PohEAkNhJnRN/VPM7Eo+QKzb0Mh1OCcDP5eKjphgDfZ5tK8wOUDCVaqwZgOTgbDsvgryIPHBcOnoh8AquE3x6VMennvEDE/hzdqLx3JFGMpvF4Lsso140g4L5l196w6bTvMYKWWY/WTbzY6YgGted1Ycb8my2+Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcAO9te9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcAO9te9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACB5C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778524833;
	bh=OMkhyJOcpsEAWNpjA1cM1C/aXDtKEc6UjLF1ZCenaUA=;
	h=To:Subject:From:Date:From;
	b=hcAO9te9rC+VWIZu1eZAqegkAh7BjyVwZBH6zZOOdKVyrN3BqkokP08VxN0yNgRoE
	 sGYVqC/SbqU1jtuBogVagiWHojVMVhu7656DJwDhEcM3Chg5VtXRN0aBXSoXPy2B/h
	 m47oa6ShDWM2nEO5RGyJPLyiXys2o1l+X4hkRutJXQ3fW7CRcyijK53IDSDJXB4Xkv
	 1Mm2CxQd1PX7M/sgpO0vgIxti/05oQYUXmI0xD5gkGtkM/UXi7XWJuyLgCOhHbaqVV
	 bNgycBUcnKKxeb3I/4RbYfsKKwTAkGJuBXS99z+UKl7O/mZiRCyX+iaWLNTWCHjqlF
	 T/7eB0lWTZJoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3EFCD4846
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177852483369.3092.9754139569284885644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 993686b3c64740d3b3849a169a9ca520731d96457358196c28f5d2be34dd9f92
Date: Mon, 11 May 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778524833
