Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7D433EC
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771729494; cv=none; b=WiKI0tgwOE5cRafcjPOj3nEAIPLSObXFOLyjtAcIh1UaiY1kvoDqrCWYqDfO+AJ+9NtB5fSSUDjbW2N3UIhpnPPBUHGG9PGaCzYd7H1AKzUj6o2g5Tou/43PAYkTpSWnyhhdImhDK4zVd+QEAJDTTuxWfnHBMS9lB3dj9VVomes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771729494; c=relaxed/simple;
	bh=sHB5msS2TJFMKRgTHxgXhctzobBpmd9iy1Sqb2O3BfQ=;
	h=To:Subject:From:Message-Id:Date; b=i6tcklKyoyD101IkaLc/maqRlJvwMQQUOSFjBmzAqNZHb+Uvjs4E3400JJVdf3G2Ul/swl1sEPez+aTPlXTmsl700nyRPaYMcc/jV9tGbLcbsbFgKWEqid7IpPRYVng8EGnigDzHUGwOQ8THA1Z197vE4IqHe1E5vmUnjMNGovw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpXGihr+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpXGihr+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE267C19421
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771729493;
	bh=sHB5msS2TJFMKRgTHxgXhctzobBpmd9iy1Sqb2O3BfQ=;
	h=To:Subject:From:Date:From;
	b=PpXGihr+k4G7qM8bA2YFqs+CWFwqfcQbtG2bCmcQjRu42mVbUXIzWBe2C1KNQOHvl
	 p0RcKnLH+alKeQnaOx//YCijo4p+7s2sHYc+X6O193bbs37+oCvkbtf8BDOr+vHA6z
	 4YXHmKPz+AzLhtKrRH21cvO25KnIlLTZG+iX6zAn8tr1hOB1JqOzGPizPDIc1MeQOl
	 UR+l8rdw7eBwxeS/yHHtqAjBXkycDtk8B+aBiv08AIPWuDtuCRzuGKskVruYBFDlqn
	 D/Z5trXrGC4odlJm3rH61TPZU+wZU+MujFv3fJzRUe56cODgDsewBH0+t7hBC1F36j
	 NuVcAS4y9/cOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99ED8C61DE7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177172949359.32427.3688643504481344896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0faf1e814591806d641b04903b46454404f52ae3333b7cd085f5ca8296c7c74c
Date: Sun, 22 Feb 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771729493
