Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EDA242D92
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753400394; cv=none; b=NmfL7CwnVHDcpFjq52yLEdBaGumeHHmliONxPt9zV4n/hYqVRut538Hk/qeEYnPlpk+X8uMiBqb/57fjv3A1Tm5PZhmru7HaR92Vg4tnLs/x1FDiIrnO6o816wdboFShNYevg0R5F3eEqLpM3D1ZGyufM6TpgfKvn5XurwSXtac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753400394; c=relaxed/simple;
	bh=+Jad/RNLgaSky1Ju2ptiqcqL69W4E4817juEgZ5KcRM=;
	h=To:Subject:From:Message-Id:Date; b=hHzF75rY+YvJRHfgIJ4By5Qy+j0WQM6t2bwle2b2ACouar0+0Gv5c60GTl7S02LjVsKiY25ZuIkGu96LTnvxjnunI6hquah4bNTH2U1IsQw5nY7QxRKOLPDPDomD1nEiWoL4Zl8OBfv2GA1BupuK7b85AjM5nX28f2aS6J58SKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yjb2r4W+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yjb2r4W+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7349C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753400393;
	bh=+Jad/RNLgaSky1Ju2ptiqcqL69W4E4817juEgZ5KcRM=;
	h=To:Subject:From:Date:From;
	b=Yjb2r4W+HMvwy86gg6dXI2F/cAlFVL9u+yS4Z4Ys6U7ju692HU83OrXKKjZ3Z0/Bz
	 bFeozMzIWLMX8fJH5NtPu/3OIBZDu6hlPHOxg9t00SZtWLqVAli6APpaYmQ2FY1HY7
	 79cEXpC7sImOnGjiwkis9AV9Hs2qZ7FG0UGmrygZjKvctZRKYpTxUvh246xwoFM4Bw
	 rWXi1zUhTO7cTYuHoSDTIZ4+4D7FM6TWSJwvdLvNxxjnSJt55w10Qu/aeV1QLd5WJ6
	 G4xrTwN+m19I040SbRMSxicdGjh5ecuIs4CZAZmKYWCX7d1S01uCbmzF4Ezz9OitUQ
	 ixOmTpQs/Kfig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A91C87FC5
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175340039358.18052.17236899150188831880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8c53b991b483bcac32dec4839dcb3abb0bf11097139f59b126f89871b2a35fa
Date: Thu, 24 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753400393
