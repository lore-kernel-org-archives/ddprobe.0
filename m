Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4240132D7F1
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784319514; cv=none; b=m6vVQKHOF8bFJYFeuktbch4X+Xwi8Bupg2bjZouvbuW34o/Z2/ksIUSXL1dUP1lE75zqGAH2MnxcEGJPXTFElqgQZ7RnNAOVTA9JWrNIO17jiaH2dqzDcRRErpheXTxriLf1DVcDCjvxN9wSIy3UAgRRjw1/T+e7513zdU78Z8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784319514; c=relaxed/simple;
	bh=5Eh4gxc9kyobuNFG3DMY22u/GFm+ZT9uOsOY9R8MYeY=;
	h=To:Subject:From:Message-Id:Date; b=uaBnURjr0bmz/rlbHolCKNWJxKV05BG2yTCFYQ5DwHc5rYTG+ryhuXEJ+R0iZrWajJA9xOgeYz7S0PaAgWCKA+yChooveDtU5rfmkoHy6so7AQC2cOtDhQIG7I8cyI5QqeUmctyI+Hq1u/67NUF6MthYEY3ccpfT5Do5m2Gb6zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhgLuqnu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhgLuqnu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BBAC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784319513;
	bh=5Eh4gxc9kyobuNFG3DMY22u/GFm+ZT9uOsOY9R8MYeY=;
	h=To:Subject:From:Date:From;
	b=FhgLuqnuvIU2K453lsuvbP6IrDtRuVjiHlgWrc9bdbzQ3a54Pu+U19i+PmRLDOgRW
	 T8tJ7JmtlSX8a84zeYRts/IbqtzgkmQHT0lGd1o0VoMLobRWaQ90Wl5i95fudGz/yd
	 tDKM2ii+U8TB4SgiBW1vK3dtFI/8Icu+z3DffOy4eSX+hoOs15fmx2q5jkOJSzWeCZ
	 XmPncU1kwvl1t0aKZ6XjZqGbExt3aPXVXDoOjMLVQx5/0SKgfY5Xq5J2ZCcuS4utF1
	 y4ipBIWG/DYdnrFuG2kWw6Dpb+o0GK2LruieJgLIo2/aD7sKHvOPnBikxHyy8u9ruo
	 Or26iAbHatTgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAD9C44515
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178431951370.1272.9391779364312573182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb886ab5500de3ef9beafed8e704c2a8e4f0abf47d87cb18cad3817e73a537f
Date: Fri, 17 Jul 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784319513
