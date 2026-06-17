Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE703806D6
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 20:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781728594; cv=none; b=anA3zEHNbzFhkhk/bpg1hhhjlv2SpkxQyRBsiEL9BQzp/7pOozseZrNwVb+rM109eOLnXpZSDM9tV3NCDgIndzlm9iPn7QIqs2pyI3pKaV+wIng8YPFr2QLMSdktS9uz9lu0Pa/GTKKbU5/WqlWCZ2SqDPZ4yZacY/tfnKDhgGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781728594; c=relaxed/simple;
	bh=ybyRtE/m1AfIryd3P6UhEEbO/Pnk7yyV+nm0+HEkrb0=;
	h=To:Subject:From:Message-Id:Date; b=iV7ebIvaK8afmVYrD95m6LAlgizZvxkDvDiQmOB4KGE2xpMw/xALqFYOOJZ1wYu5zMqm1LaERQy/JGc8mXBZthLbROfh8hGlHc53v29vraZcgbZ25Pxnx8xC9+HEAEW+wjuWTdHqW1lqRT1T0sqiz3fhkw2cOA1YUImJDPXEUgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MW2wcNO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MW2wcNO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C926DC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 20:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781728593;
	bh=ybyRtE/m1AfIryd3P6UhEEbO/Pnk7yyV+nm0+HEkrb0=;
	h=To:Subject:From:Date:From;
	b=MW2wcNO8lFl8lrVEwH3JJc3Ks79AVGDM7iF4z9OEQvnOXAtWpbBWVFHDrp79sP/PS
	 DlHtAjIuz4ezAjimDsm9QA4DP4ghr2l3uX2FrQcn3f9V9K3yjXC5SvvV2u046fvCtF
	 +pxmjkMsiLW8EWRl0vYLTRg85HwPPuMPE1Dw8/p38CNsbhhTS1s7VKJwXpM6bBEq8T
	 8pSLfxAjFQe5BdZlt6tipmoRm4sviSgMv94xB+XQWQ+kqPLRis+LaaEcoZyob+uXEq
	 5m8heSVCRmOCYVgCoxOgOQ8I3dj6JfeC8MRVjf7sYKS33Bod53fXb1flbr5U55orU+
	 mBUzt17RSnwSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2F2CD98ED
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 20:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178172859368.19930.2628693956321074426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c577264f9149d34e90c642088ac53773693ceeabf278d8a112161573f40586
Date: Wed, 17 Jun 2026 20:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781728593
