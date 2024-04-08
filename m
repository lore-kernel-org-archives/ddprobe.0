Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14A61465AE
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712606897; cv=none; b=uK7t10gHC4BcuslcexRKPtgK2fXDc9PJ25WGUaM1docUuK+ExOGNuC1bGVqWqT9a1FKu53gsvQr5oeX8UwuZN4e6HZ4U6cdEaYgFJXZ8XX/adYBP25ScGK/H4jrlAvx7JYXjZlcDeCFAE63NPyMGmrwV0kuGZqRBvJWTSbix6oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712606897; c=relaxed/simple;
	bh=Av2I1jcuUCjp0mMwDJLeQTDE4C8VjPav09f/xowoiNA=;
	h=To:Subject:From:Message-Id:Date; b=t/PkE3IuZCiFmsv/zPpODd0aUtGwkb8frl3SDk/JFplhzMekM7nfkTnhyrQoFLQ/c2sm9FkISsIfQItf40DH72PVUV7gqOiYqIdI4GC01L+jYW1WqdB2ug0Q6D2nKfOKq8cDx/UH7CbFVblpyB8dch39ZmYZmoTbSnI2o3Z8xpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LL2uGcAp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LL2uGcAp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81A20C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712606896;
	bh=Av2I1jcuUCjp0mMwDJLeQTDE4C8VjPav09f/xowoiNA=;
	h=To:Subject:From:Date:From;
	b=LL2uGcApb/XnQ69dwxjGd+W2gpDIRBe3nqVNbr4+wolhkjiZ4XhTwJR1S0M6Tcpcz
	 9yc8XPDm3mU0C3l1K+YstbWbc8oYiy+nsA1sYDYuUb1qmdWgvOde2nMilaffEu1Qpr
	 ODxKtKvtFLpmfA6r58F834NrNE+Z1ihJD59qSqH1p1IVO1t83rTA8BLV8EyrRxsS3T
	 7RrfaRk3nbH7RS0iTqarHQGT0HSEuG4w4to+Ho0XDb8WQvrFIr0Pz7mvhf0BZVAa8A
	 F+2mfiSmhfgkeT0wuWf3ulIcV7aLVBL+mHCDuOUvODSRePyuTk42OCkeSy/DcRah7c
	 sWbmyncwz5BvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DAF3CD1292
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171260689643.20478.7022072229211915145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0ae3873f693185910ac625788dc17d20cdabbbac1d7b7a87cb4c89a2ce76e7
Date: Mon, 08 Apr 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712606896
