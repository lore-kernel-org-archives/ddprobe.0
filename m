Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F0713AF2
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757732394; cv=none; b=W9h9cCBZXBIRrXZE/73pWzDRTvQ+AD502aj1hw08bjKy0JyI/xZ5tlKeE0mj7VWJCn+Z7vSHP2EXVD39kNHv04sqftlcnAI/DKULZjdRTBGmevJYYwB+hAus2kPhf4BlO40m7hw3cGzLAVraleE5yEr0S8OR2c3aPLf/wRU2H+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757732394; c=relaxed/simple;
	bh=n0QOPNttwmeOEv6FUK8JHG4RTxBdjijp28NVzce5vBs=;
	h=To:Subject:From:Message-Id:Date; b=kivewISjgFy/8MECxkCyo3k/fJ/xtup4L9QeA4Yd/sFPLPyc85xLpUx8v4ZFg+YPjRyC4+NUwvqnZhyEqThLUMq5sVZo0/JtkLoJ3tPzvTpv08lEBVWQkqBkVep7zfW0/4UP9FOr4M1ri+C6vOJXqFewRpO28w2J4+5hufUQqeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1VU1y8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1VU1y8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EECC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757732393;
	bh=n0QOPNttwmeOEv6FUK8JHG4RTxBdjijp28NVzce5vBs=;
	h=To:Subject:From:Date:From;
	b=B1VU1y8ywJwdkYY8Yi55meYPFPiDccXxkQUmURjNrxm+ov1nhaD8eAqlH40A8tdMu
	 nsvIG6lrbkq663WIfn9HTYtLhS15XBPn4Yp2HwNOIJtRtjDGsB08HIdpYJRVtfBrJ5
	 s/IkGtcCIhv0nuP6x8af1fs/O455Zb9dan+hf5CAE71tcLqjVk2ya1PLSem9k9nlIa
	 OsQKnX0FrUzCXOLoSLQoizJHGzT5n7b37y+KEuFaqV3INspSx0v8y2RpsokUximajc
	 vKYd1n0DCBCTiYw1X09zup3cXgnTTGz5a5XnZfCnUOeLci8XFtZhfYs1yM3ZJyoJUg
	 J9qiAA1Od7L1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EB1CA101F
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175773239358.14049.10872465514086241607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af5d7dc542c3f8768e2d2d781dffc49731b724801df01913a3e1936250b7c174
Date: Sat, 13 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757732393
