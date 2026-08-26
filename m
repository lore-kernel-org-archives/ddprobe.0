Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FDD352014
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787748034; cv=none; b=PdHpvHnxPIxRjIIbOW2JNneKV/CxQH4aDfG3tspcB0ZY/AWHHBaD9Ymo5Kwq1Yxux580ruUaAZ/WNj+fE+UOCL8ZPzRCdx3qr8XY9E01M0fV7Pw5v7du+6hCiO5guIDZXR/e1dJCXuIWI8b0cA46mM6cfv7+WRkVkS2Cavtuy7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787748034; c=relaxed/simple;
	bh=kOzbyu0Cl1+nglW3qDR88C6d2WtmsWoffiw/vnDXUJY=;
	h=To:Subject:From:Message-Id:Date; b=rDFOVqZsNpZas+wuuSg3OK/q2GPNX3y/9+jwtJ+AUtVHVcw1yt5MiFy3VOs+2L+JNSql1qCb+3vz18c83MJouK6X+Gt4lMyKEWIP5b/jwoO5Fo4zc8K7jCbbBUX9aUOsWfb46ZGljd+rWYYjGQXX1n84bBT2fftToJp5KvU6Crc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6XvkTFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6XvkTFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3ACCC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787748033;
	bh=kOzbyu0Cl1+nglW3qDR88C6d2WtmsWoffiw/vnDXUJY=;
	h=To:Subject:From:Date:From;
	b=f6XvkTFRF2QkAetOdEsBVb0fDKl4OCEL3cBYy7ksaAfSLz0IQ905cpsLNPSe2cI4X
	 VztSJTWqFDaFVmi/OJ3In5gBiiBI4vmRoOWAiOO+g6eSvL+2RV1RsXOK3lXe+jEszh
	 grApVQWdH4o1YCSVd7ppMxL7AFnNKx3tqHNEx5mbDFaenRhcqMnsERqGlOYybopJwL
	 BNGybdXGXerq37Z0wX/XKYb9kqxBr308BVXCB7KwsxMGGOfKHKVoe3PjU0pWEoiSab
	 XB3bMvISK8HI3m4fSag1AtFKs2EIlF9668zXa4lS9jKmGpZVDNVQPYCi8qn7MjqHMD
	 gaZActwiOyh+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD49C61DBE
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178774803369.31629.9908256935437619961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d422789ad4523c31690e409437eef3f45281c8befc5572452dddcbb2dc0ffd18
Date: Wed, 26 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787748033
