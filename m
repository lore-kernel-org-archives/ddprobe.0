Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2838F2BE621
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761632994; cv=none; b=FJfr7xBgyR9lQaMdzyeb/37Ry1CehUeyxKfaIIE3+RJiB3K1gKQh22LOtHCgsPsLLpy9pEEbSIwgKUYf40C1RtbjprvAeITqHfZzKOGJk9k3Fg1mZmR3jRaXx5HY7h3/v0hg2fDShOZJeABYovWv2bG3GdcrRl/eaVbB4SmTbII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761632994; c=relaxed/simple;
	bh=ndMsNZ4AqIatvR7gN7ZXaOjXgNjlOMUS+pCMqO/zt0s=;
	h=To:Subject:From:Message-Id:Date; b=GNQs1Qct+zxkNbf1MVvCBtmjl83Dr1a3c3hZhT/9RfNeOoJc62evzstT7w4kqTx57YCOA/Ob1fvLiOcJ/TEtIjNB0P1FTVgqnSNeTXjksZIGCm5dezox4wZD2fPhw/2Zb1+DB8qrVQt/fyN6TBFoaH+Zd3whiqUOehNPsdbURxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T13NLcpc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T13NLcpc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA49BC116B1
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761632993;
	bh=ndMsNZ4AqIatvR7gN7ZXaOjXgNjlOMUS+pCMqO/zt0s=;
	h=To:Subject:From:Date:From;
	b=T13NLcpc0IiT5EDJdIoH4Cv+30hPSxpLYs5+PZsgGVC/Vs9fS1uBzBhD23S55hPdh
	 xVnCg4ZHaT5GdlsauE5rmK5Cr4xPTq7bwxYZJrffJAHy1rCLMGmmLEcl19tgQMNEqm
	 66BBgMrPjkJk8s2EAjWw6stcVxjepS3J4zKOhRwq5HDcBg2X3zaO9yASqALAOEUCvo
	 w2N5fWVlBpalPVwVSRhKMqWfjiX0xXCzeuwfNpJMFhonFMSpa8lanC3uQPqTRSBnLa
	 ET7yRyOo4f765SyQKB8nuYbDDICvW0YikHf/LMXwGEA64S8TdpgixnvnxLYL1f8C5e
	 V3MK8scHd1xDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971E1CCF9EA
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176163299360.24466.6898464436916380660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8de5234442097c49d12327980093873db7cb9c27bd69baba5c77b43f8a39e66
Date: Tue, 28 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761632993
