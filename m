Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA6950276
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 04:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782881314; cv=none; b=Jxp/UUYg2paCj/m5Gf5uEEH7SZqCp0JpTld+XYgjo0P+t0nbrnM0P8wWmXOo8CVOTeW365b9wlGnXYHeZxpE8K7YRcnh/3qyBIW0G6s1anFOnMltxrfk0hpCr2t1cSrpIf5g59NCsMvriMOeCY7MlcvF+8GCSgBV1/+YQn3Z81g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782881314; c=relaxed/simple;
	bh=hnAH1VN0/zNLDFLnQrfpgAOoTWMoL8941YyrFeI2Tvc=;
	h=To:Subject:From:Message-Id:Date; b=bYK4EqHxGz5PGUdf0kfn0bNyHwP7WrKahpDKcUZn7UMzgCjp/o+KAaIpqegh/XBTW7CmaUZCubKHwnoEmrw4O2b8HetD/5hn02rn886sWPCh2c4OzyWDX9m5UCAgKDg9A8tL1V5uHcbYuQMx56Yv4aNmu+9p4g1+oAu/RE9sH+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+fBAuLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+fBAuLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFF5C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782881313;
	bh=hnAH1VN0/zNLDFLnQrfpgAOoTWMoL8941YyrFeI2Tvc=;
	h=To:Subject:From:Date:From;
	b=a+fBAuLHE3yTKZPcH8dgf8xuvIjffCTYiLKjkDXcsdoIxi6qfMZmfUmCKCmG3tNR6
	 J+vdiVD8oxbvLul9rlpDBp6cccpPHfxb8J4Cp9EMUMDUMICbPiQrgzhxA5cdkuvuxp
	 N4GCcnCqygFucoCBbC/0s4fMAfIyLzhD7woBgJ0gMaP6IH8BZObmVY+k4bYWnuXUeA
	 /ir2u4szu9HKURhyWxEf8+nsZRYiHO3JivBJgN32dlBgFu/UBV2z5hAbEm9LXlzg6f
	 +r3W+8hvwZVFQdZWrIyHUA1Bsz7aWh5m8Q/d1twqJiWMXyl6zvkY8ToDkMck6XPo0v
	 V/3OOuyRHi0Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE713C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178288131368.23312.9406765815629185886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e2ae2a359666b23d3514e27dd1417d752d720328703fa705cc28211f087ebfc
Date: Wed, 01 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782881313
