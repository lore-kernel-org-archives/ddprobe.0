Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEC31EF391
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751755794; cv=none; b=ds14fE/3114AVpDwFqXXbBTnWKEmqhXnKC+Vqb3/jXrgZwS3gqtXju9uoa2IQ9KDpZGRTW0xOQUqVdhL6jLiVqfqPPxHqlKTUk0r4M7Oi1sGEFgsfO01Sv67kwfmKOO/G5VKcPc4koh/WTQqvRl9Nit3p7Ui+bh+rrqmhbgsmno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751755794; c=relaxed/simple;
	bh=/Hfmbkx+Is/hD/tKHkxwODE3VOywh3L1AClKIs5+2Pg=;
	h=To:Subject:From:Message-Id:Date; b=bL/DI5+FzinQH+up2sQhBuJIgVsJOu941W6vYIOODx9k/AM0mvnKyc2RPBz3NdigHePQWuUNrUMKVkiWOlO1ckmtOGTXnhfSaiC7QqMCH1s3Cdy6Nv1QN2TxtE7nMPUidawexYtc2Vox7BGr5vDyHcrD0E35TgxqUcxJ/SE5idA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GELBn/T9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GELBn/T9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FDFC4CEEE
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751755793;
	bh=/Hfmbkx+Is/hD/tKHkxwODE3VOywh3L1AClKIs5+2Pg=;
	h=To:Subject:From:Date:From;
	b=GELBn/T9cYr6Eo6yYgATn8WxprNVL7whgu+pHuyU7QOyM2W1LZx19Q+IxGc3AzN6S
	 Xu6nl/l3AJtzu24jlH7z2q8qYlOILfBMR49eD0DmIpCHoKafv0I0Jtq1or/ZGlim68
	 U2e7cHEf2XyuhHaMhNcHL5/1w2vP1BCR//o5gyFUQ/uqbVUtmLIFLCeYeTjnKfyI4Z
	 O7MbdvlDgI6wynat5slcVWvsoHZsO2wvOkechAGe6JmMOxczpTSFdOcstm2D8z7Tnd
	 VW22U9w/LyPbDepH0luRj/MgQKP2y8rLCw/jbfpZC5bgY0zW2ezVvkg6CA96ZR6Hih
	 /VrjcpIk/8m0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91592C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175175579357.19308.13344863339092027190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b70473b615627aa11a03e2956d4ee7c1d6045d50c406ff77357702d921622314
Date: Sat, 05 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751755793
