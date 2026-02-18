Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E772283FF9
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771443294; cv=none; b=fSWOgXqN5W+ir3+PO2rhO7Bd/v4Qpa5mcvQloqhhR7qe5U6vWXUJ8oed3RKTY3xVp7vGwrpfGLrfklVti9BDqlCaqhLO+sTt2lVsJ3UI9/TbRpokPcwQR+izG/mQOF8g1V+XLGoeLulNcg98zVZXLAPMeLGzbEvS5UqyRoiwIqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771443294; c=relaxed/simple;
	bh=sF7ZJVf46k4oFrG3IoRxCrkjjzTTQCxnFMVqXGiXKu8=;
	h=To:Subject:From:Message-Id:Date; b=n2Q3q8BrJUv0LvDSDEkbHqysSgZOfwPu62w7PYMda/FBfHO+R61NoKAD37Es6m3pMRTW9kQo5A5MgDu7k85jINzY582JLdnAKLYstFFLKpNQok3DFlh47rcTvCtHUGcvAuofYRURksK9UDbNv86oYMPKFpFbRghAdGLLIRLNNuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5q1MXPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5q1MXPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C1FC19422
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771443293;
	bh=sF7ZJVf46k4oFrG3IoRxCrkjjzTTQCxnFMVqXGiXKu8=;
	h=To:Subject:From:Date:From;
	b=b5q1MXPgWlW5RVfvfNDvQBKY7C5eDq2pjVePNmNHBqOyba5PHAags6IRDSU5ooIcE
	 lReU4sVFKOMUU2C6gUal+fUV4i/GzYRRMY9URwvheUo9mO8O6a1zRnC7Mr5J5It5Tv
	 vE8hsw1UqTTHrgxpy8i6O4cCbhnI8Ujyi7giUzRHJe8MpjlQ4y2lP6+9ntcyW/LG17
	 MIy9RR1asESYxHZnZ5pndlLomBRq/VJpMrR0x9nijQp+iFazDw4lvRedXusDKQHQo7
	 LgqOpcnV4Fcr5iXFNLz6G4eq7vhYqgj2c2kcatTZ+sNUrfzeRP3WZbtWJ1ARhVqq6T
	 2N5rUFGR5izBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92520E9A04B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177144329358.14518.12423561964362104526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac10dd6cc13874695243975a00a3032ebc6728b2a51db91dfca6ebb57684e3b
Date: Wed, 18 Feb 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771443293
