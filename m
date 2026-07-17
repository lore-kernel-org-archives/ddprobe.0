Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3143F6C26
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 12:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784290715; cv=none; b=V1v4LB6lQFr1ikh/C66F62QZmIvfp8QS+idT5m8tsOlaGin+bLk6wgrY+c9+/1mW/3KO4RfFzYdWEDUyqV0L2cGU4yAET9VVTbl8f5zZZiVBLRt22Fy+oBiwUS9MAUyHtYN+QOd+qjasnUc9O7HMPhRNEEyL3pZ40Sd9Vub8+gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784290715; c=relaxed/simple;
	bh=mrETupzHwdTwS+lB/G/wMVbsyZmKiLZFUn9geaDWOL4=;
	h=To:Subject:From:Message-Id:Date; b=juKN/OxzpMBmzlWs6vwqFwNhcsTYHE5zQU63elxb+/FJk6Trbc5bcZoM9XSqtf/g3x+yx+vFj/1inF4VIg1UsV8Ov3pQWaUVANI5saeFcu+D8M5hpIHgVQcEKGwzY2gDDK3C3/a4Hz2j9JXsNibLgPgHzQZWWf/WOW/l6n00gMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEdcHYIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEdcHYIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17B9C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784290713;
	bh=mrETupzHwdTwS+lB/G/wMVbsyZmKiLZFUn9geaDWOL4=;
	h=To:Subject:From:Date:From;
	b=sEdcHYIO7s2But3eMSCLiMVOsYCEQcDPnll81SDOt6ett4OHdDrwUzwmIKgwQhBSI
	 y0dPrfa7kKHWAODPGYm0OCJ194wME2wUuvuLWUuU9RiyKCRgLE5zN/TzlCX1cxQS92
	 vnfHCWq6hw9Ly9z1dKOptYBeU0MZ+XlglFsEsbb3hmFLovIndcQzM75NNfgCw7bE9F
	 ECP7qQcWyGTpISXIGFCWg/c9fFEvuj5kNtm09oI91R7ieHmkoduQ3bBaEJY78Ecw/L
	 UHfaHjSSdRIMwCPV8WJcC4s7aHP5V7bfzPRdchkxAko9fQOJwXhKU2zIzoF1C1zd9p
	 IxwxOVCXYlg/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17ABC4451C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178429071371.19148.2445599802556088709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 393f237c1743f3639dcb45ed189b5f1697b248f7cca0eb1312592122364c56ca
Date: Fri, 17 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784290713
