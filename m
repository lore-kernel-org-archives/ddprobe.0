Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246B42D9481
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776110854; cv=none; b=meCzBu1Fq2SIobrMY9MLdAoh0+aIUa/xgJ3vspfyNhCorFIouB1bzubm6H8N7OvhjXRh6PdItfxJNWtaaGJJ1lrw4LEzw53iRKxfDTBl8k7xJ8i37DU1fMQjRKdDpiO/OyHMQDti74qgAib++wnwo+JkIbqV+6KYfjfDeM2XDtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776110854; c=relaxed/simple;
	bh=bjqpP6/MyRfpHWBCX+abEVihSd/QXW9CaRcx/1gzzEI=;
	h=To:Subject:From:Message-Id:Date; b=r9GaIZBdu+y3DX6f80VVQx3B9K/uJNLLDrjpOXMUDoJebcjTgmvuebRZPwH/CZ7XBHv7EwSxv6KMa/0VUrlDuSi2Fm+bGVbRVBLhsd0EN3EXBNyM4Q9qlJufjXArl55aD2TLeG5ktoh7PhO1LQ91AOLNXPl74HE3SPl0tiXnC04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVRfqDJf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVRfqDJf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4587C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776110853;
	bh=bjqpP6/MyRfpHWBCX+abEVihSd/QXW9CaRcx/1gzzEI=;
	h=To:Subject:From:Date:From;
	b=YVRfqDJfLngUmyh/Ly91Cs3eZQray2lZZkxkqIeaGip5l+z5s9vvxmldN+CuKIEFM
	 ZfSvCBjPOGqkPPnUO1iQUuRpdxH6MooLkguMB+bdHb7A+d47DYuyao3QzBfU5pkdVG
	 e8FBudbBZfCQaVzXyFreLmBy0iKg1Yy2znd2sWqz2Hm5cWLVuwtW1fSMUJrTJIkPrJ
	 qpxZ5QWcQi3vJRwW9PZJ8Cyw2fjzFqv97djrcBC0YpFEhu5Gw7Sh0oTCM8xrPdZ6rv
	 kgONdAYH0HKhTow8fa2PB+TPImE4FllP/b7usGXhOR2xCukCeL1efF1Y5G2XNg4//m
	 QLJrUd3cSkL+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25A1F531CA
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177611085369.23614.1415733289922164308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a6b509ce5618074eb6986362a2e70ee49ad644074502efdecb57fdce20f95cf
Date: Mon, 13 Apr 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776110853
