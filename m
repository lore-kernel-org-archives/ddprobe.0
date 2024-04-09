Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A6538DC9
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712696897; cv=none; b=g3ATEfNLl8R6FKFYHW7cWZdIbLLbMVuNswfpQQo24S1hWF/RlRwtUd5PotRQcxNtadQOe9kSKZUfstq8jfbL3KaPDrGpBtPCjssSSwhaoMHhsj0R0N89wsVf5V/sLjo+U8s+MALWm/7TtnvOpPK7Cig8neUWS4LBkeoXIYU+dAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712696897; c=relaxed/simple;
	bh=+zSWRX9UtntBNiUwCvTWKJVqeR6GcDOlwcrAoXIMq98=;
	h=To:Subject:From:Message-Id:Date; b=sJFr3Q87FFNJ1q5Y0hjsn/spIAORe2bcCLrC1hYP8lvgATeS929LT0lsnHsZHKHbOsK8Lh270Zo7BZzU1ygR2MXR3G9a7FKxIXDZcirJ10w6gnk9kiLosPqm9sXBs5iqulKFQ9zxhhWuRCVszsXonP/DIiuBtrsJUtIIjhGMX8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gq1hP90u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gq1hP90u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87FE0C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712696896;
	bh=+zSWRX9UtntBNiUwCvTWKJVqeR6GcDOlwcrAoXIMq98=;
	h=To:Subject:From:Date:From;
	b=Gq1hP90uAw+mUA3+FCLT7HcWJH9FIzoqQ2TZeAi8y38fX1rer9dO+iTtmBDnc79Dy
	 eCrq8AD1UBZjmxpzvDUVpmi71TdXKHyf2q2ons85QSQDMEH9fHiNhhAVVS2Ia16wTf
	 TAuWFtWB2DrB3lBo/paaRif5jNY74QAQbgVvqVYN5sDvHKlfCslwidm1NJejfexitg
	 cq7sgSxJs5PnRzRureqPtlL202OsXzl7tTxPlP8TR/IEpEV3pcnewVqDRuR4cTuRcm
	 B6RQ6BrO0xi5InU5x2yVAOA/XJryNliMdSC7lA0m3FDd68BACdhj7WoVmuoEpioD+M
	 plyd0VLXEqOfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B75EC67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171269689641.16785.10137237838121557570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 033856b947a69b105653676fdebcedf9c089bd36dd1e4df6f103dbc67248273b
Date: Tue, 09 Apr 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712696896
