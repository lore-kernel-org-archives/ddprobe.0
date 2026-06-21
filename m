Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97C283B2AA
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 02:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782007594; cv=none; b=Eb/OM9r3KImdNi4oB/m3n5l1w8teaYI6pBXe3DEpnZwSG/7Eint3Adxh/ioou/DdWSVa08R55BoqSl/E50PhCR1AhBzoskDa99FOnTcYGYIVRuS7D8WqtHO1bdueagnpegRIk2piQ6AH2txxA7jTGt5kwUgav3Gk3p7MYlMWu2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782007594; c=relaxed/simple;
	bh=1epl4QNiS3CJcEbcV4DdnMfxvKLDEBWgkvSIQXEQmmc=;
	h=To:Subject:From:Message-Id:Date; b=XC2l9J5WbJei6yByDsQICduzfONAD749HXazk17et/2+xHVB8ERRCEFK8PGbnJACnaZ+tH7rfJ162OjkN1Yadi11qv7di7UrDs+mDD0ZMMaYrSpZ6H8nfHkTQHcPJtaHa4goWHTtlJCrqHEUICLOKnKqk07diAiZHaJfqYRXBL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ut9hGIxu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ut9hGIxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CD2C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 02:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782007593;
	bh=1epl4QNiS3CJcEbcV4DdnMfxvKLDEBWgkvSIQXEQmmc=;
	h=To:Subject:From:Date:From;
	b=ut9hGIxuLjq/UltC1DFtFWHBFKHhADoPZhkCwWqx/15n7FvpuCCorD6uHSZu/4Fx6
	 whd4fu6MJb8Zs4Y27GJT0FZefhnmfcWpJG0j4P2yweaJKWp1iWMVcFltYP2ibIi47R
	 mfeqCamk7uklVcu9zeVi56piY+RBWtPt9u3LB7PNb+Cpfk9ed23ZN2iLEFA/PpjC1r
	 2U52UVRHpcMWlxkRM5EO9YJKSu12ArrJsnpBb1Xb+l8yGtRZ/j0rVZBHtQjnZYAnhz
	 gS5+87u2+AyYpV49DDRAfVxhOe/d0xAp5SsXabmgftjZhlOGFfKLLzPRnQvDTcvBlS
	 vt2lSxpPDlRtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5DB3CD4F26
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 02:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178200759369.26891.8774992729880862692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f341d876bceb71b418712193bd109a673254705257c44dcc0ed6c4b5c4fefd1
Date: Sun, 21 Jun 2026 02:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782007593
