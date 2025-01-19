Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A3D481DD
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737264354; cv=none; b=E4v2aLlSTSZkCmTpPjZMVPw5PU5X52kNTiNT4H6Bzg/l11NIphGRCO+ww9nayoRjALjjKbwr8bSzYc7/u5+iI2EnxolsrrOg0qkrJjWpeOC9I2tMhl3BfWJvMhMPssx1I2yrOnM4cOd2ovAv2mW9TffO5Q/hN6tS0SnwMGk60nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737264354; c=relaxed/simple;
	bh=H2Psq5h05RGf89fsJ4C4Fqtldr5eV9grAYFkZN8HvX0=;
	h=To:Subject:From:Message-Id:Date; b=Wc54QHlmbbwBcfHpL+c/HIqE6bZ5IZ5wHVwf1LvItru0LidK/rRfD2SXrNWv/aRDKMqRVplC0KrMlvgQQa6NQnB5gM+R509lQ97ZiTlNAoDMpEl+YuhKre9tE+v/x3ml5Hn4M1gT5luKtCm2Y2uYzQiB1a8ytnfy1Sb264nqvG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aq0bhUGL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aq0bhUGL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3CD9C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737264353;
	bh=H2Psq5h05RGf89fsJ4C4Fqtldr5eV9grAYFkZN8HvX0=;
	h=To:Subject:From:Date:From;
	b=Aq0bhUGLl+O8PMWZNZ2lj9Nk1b1iEmgmKCv7GrrRJMMfeg8s8vpnRxq9sP8hjEdHS
	 kx7lkmMfm4NgQ+yygujSmNwt6EgfCRm5ZJE48QOkVghMDVJ6zuufKFVmk/ZlfNI9gF
	 8lym/vM2/js+DUjZzLX0n8W2xifLCWlre1ewLXVKySmgXzJvlufjz12rriip6tkj9y
	 e/jEA92GTp5lANqa8C4CRnQ9Mq0q1Jp+O6xl9EH5K7jBB+eRsF3LDa5MXTbin1FsBM
	 MHXvrzWl2qvc1ySaS20K6Xr4liUceaHPLJNZKbAehTsoXvkxYpLVgOioRZlmxondNP
	 yj1QRFLPutsNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DFAC02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173726435359.9926.8745584399541689180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba774aa2673efcb9546c16efc4ce144e570098f691599ac6bd9ce951bf2ca220
Date: Sun, 19 Jan 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737264353
