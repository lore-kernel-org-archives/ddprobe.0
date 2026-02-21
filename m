Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302A9258EDE
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771643694; cv=none; b=NHsYNXILrbJ8j7uKXLdbX3hTFAKZHZlEopWcr04ZOu2nTOyVZ1aJ3AVXTeeFlq4iIJMWm1phHHPV4uOTzHpJps2WEAp5Qik6Nl4nDW8ueLY0R4HtrhdsoVJTir7JwuIZTeLaMdzumUGYbgO/izgaiMh1VtYpeQsK0Z8T/1VyxFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771643694; c=relaxed/simple;
	bh=H8aWb2DCbig/f3n4VZoPoVLtM2Klpx+GO6Z2T94NNMc=;
	h=To:Subject:From:Message-Id:Date; b=h8MczQQxyc7+4PWjLc1daOSQyfTtl1kASiBqCBQbLpx5bGF9C6e+QRgp6HKfUeYwrUr1ut2rhHZJwA3FLcjcoKbXJYsLUB4s86L3xMnmq7I7VnQ7seShHUPRnlwFfEZ+Trp2lysyBz9dQTGL0YLcKorrk6B/5mpsjtRGnR5NSsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1vwMP8N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1vwMP8N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5BC5C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771643693;
	bh=H8aWb2DCbig/f3n4VZoPoVLtM2Klpx+GO6Z2T94NNMc=;
	h=To:Subject:From:Date:From;
	b=j1vwMP8NsYTUkJ5o3AFve0ARMNW+J5jQ8yZKR12zys2LFt8ap7DOl1unWtgXe94tp
	 4omwOvjjje3QuxVO5y3A8Ah4Ke/1Xs4LkIuxIj8+4oy3QyL9L9X7Ba9Z21/eCgmuOM
	 qvJq1duMfadmbYJqonYXKVSAkUp98tbrTxlumgScEsMDr+npCzP6jYIH3hoWpdAML0
	 DLiVT24cOlr2GHbPmXquEdv1Zg1Yg43oyMgP1Tx3qvFTnFus85tAuTsdpQArI3nHPf
	 9ZJS+r0lnSFIDNwBhsp2UW/MzD09iJaaKyUfNQs2p2ZnHv+BCE+8qh2x/5KCRBdife
	 0Xrv0AYOblspw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE3DC5DF6E
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177164369362.6032.12459920110898491390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 703f01aebfc0c8066b17f989b08ee6b98a450b8e8b003d2eddcd1d9476b81a96
Date: Sat, 21 Feb 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771643693
