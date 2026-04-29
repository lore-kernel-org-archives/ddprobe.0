Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3825740DFBF
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777421254; cv=none; b=gJwsnWoSzxgrAQ3TA6DtuHcBUZMOgwJFqlDoxmu4h4QjiEbYz81JTzka1JclymrBvOopeUt6jyD+653zeW5CwbBDVBYjBZf8ktVDzLWsxTfnlVOhODicyNio4F3mq4ztpfxKVqJ9ksiu+MMn5os4rNGRdgNAvm3gxH+uG3TMbSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777421254; c=relaxed/simple;
	bh=Tv6Iz06y6NKYZsUqeiKbEj3LJeevOhYoJ54aOIVZN1o=;
	h=To:Subject:From:Message-Id:Date; b=mflKErmR8sGzqPxEKr+5i2nG3I8FXKvRWpDV/G6iHTHFfgAkKeRdNRQBilJQ8sHnfKJu1WYINcBX+Cdk9VJUV7mSCxqTvjfI1FmBaOjGyJEEDhcj7j/lCe/cjlkE/UFpoYd9g4HZvphzk24VdtfN35uIJiy52FS4FT5PooQqc7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8LaFErn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8LaFErn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEE4C2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777421253;
	bh=Tv6Iz06y6NKYZsUqeiKbEj3LJeevOhYoJ54aOIVZN1o=;
	h=To:Subject:From:Date:From;
	b=Q8LaFErnarlQ7QX3UFLF8l3B2w09w6R7vsLvkJ8ieS6+w2YEEmeTE5ziJX0K8ekiI
	 7Zs3qCz1lmqDX3RntmrW7f2fPRG/oCC7xN1O39ZI1AouY2C/O5FHk9nX6clF7DZiQS
	 BA27VWGpGPEpRghxoCoRCzZcHukDivo1vUduB/10KEj6GF3oMTQaGczHfKPAoTqBmE
	 ldEVb82tUYYIU/lzFSXByOynUF4zCiJrc2a993aAYXCth0ZAcNeW8OfSG6lVqRbFX0
	 wM8HoeXb1W9gDywAO+lVQ86XmvDsBPoyOTEajR+yBqp28QCLHV+8NCVCdvB55bWj+x
	 5P36Ff+IOjOYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9314FF885A
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177742125368.24880.6287770334780350237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036eec31cbcae22f581cc5673467c97ec86c95821cf348ced9f0096ac948e5a3
Date: Wed, 29 Apr 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777421253
