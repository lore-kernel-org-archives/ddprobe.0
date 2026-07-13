Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A76DB2750FB
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 05:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783919314; cv=none; b=h+pUXLJXvxz3cw6Ww4aZjThZ3rgCIxA/+13URlvtBmBgPPd2g6sxOW0HZj55nfwMBni0HczUA/FqQHoP8qtq0tb73GwcAwMF0Qsc8nYzI8g/n8XMvrrVQ4g1gzrF+NXVaY5COIZTLdHmJlfViq0Vclh8jKUWLhAyByqRnw+vNT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783919314; c=relaxed/simple;
	bh=d41YXFVMMlRQqmzMLPeEyPInyUNesiO+1Ss8xXpsuik=;
	h=To:Subject:From:Message-Id:Date; b=Hol0QC0/SLBt5Hd4OGGUm1n6tcn5zpH1yyqdIxNBRAZli9eVI7XY+d84SR/8P36c7uf2Jnau86UMK2aXt4Wj++tlClpzIMpel5EUcZupvdFt0EKQiz8NW87zTl+KMfDGInDLIWw5c6tNhpQQj418HpogNVuFVgKiNhgAaUhZIU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvU5leo8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvU5leo8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9A3C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783919313;
	bh=d41YXFVMMlRQqmzMLPeEyPInyUNesiO+1Ss8xXpsuik=;
	h=To:Subject:From:Date:From;
	b=WvU5leo8YS3K1bzfpmRVHv2wlu3W5FUJSyRKDxFsMqPX8nQMHZ/nwKCCn9F6Plt/f
	 Of+2hwDo1FyvMwRovj8eC+0lXqTNiJTxt0bn698BUMpRKlG/3yyGXQ1Sss5qCWksdo
	 f0aI7q1PjRFnkl1jrT3b8QwRmk2oDdRSn+McB0VW0eB8+2vx9qzRUGS9MRlC1tXr9t
	 weQqi//nHjF07sQKwAMlqYJHXOv1WjlODkks7wwWWksdKRgGyEL0DkNnAjRPFtJhSW
	 9Ghg3z+9RYBMfD16qsS2a4EE+B2a7AAyyZOKc3nGaKMGDVsT//u2L+V2cdPTcECCft
	 GCmV+eflxdBoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C36C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178391931368.15896.11911854608597587294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 365510db453d297e44117bafd90dfd9a4922b57bda6a09284647f590d69a8c18
Date: Mon, 13 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783919313
