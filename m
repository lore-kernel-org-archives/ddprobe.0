Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D1020AF69
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738666556; cv=none; b=tr0Z8X+olOTd/K2Hl2fPnjAcxPOvQrMEFT2mDYCrD20iplGgdaaOcDNZo8BXi64O67UlntNCcgdvZuSfT+ZV5pTOpupIZgNnsMADH++2s8p5RJC9T0+4sslcShyiWjvDb8jE9r0xXTwnL880X7LVkyjf15XDc5UN/Yi7CfxuDsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738666556; c=relaxed/simple;
	bh=FsU2E+aGIHe81A+7PoMGYTll9ot7aETrfE5ICe1wl1o=;
	h=To:Subject:From:Message-Id:Date; b=kB3/KG4EMO6dOIgKHXw6z2WO8ODPRW9RnzXM+NJS3QI5qxHi8U6PDB8Uyz1zDXiWkqb9fY0mzmZ6QuKtOGsWVHMjZqtHSCpNAg6Mq/wzKLiaigUIhdpdPnlb8m4jQV417tPxkf2BG2rU+1mx1hlrAl5EegR0ZyMn++uHvVQoGpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0wK5AOx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0wK5AOx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8900C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738666553;
	bh=FsU2E+aGIHe81A+7PoMGYTll9ot7aETrfE5ICe1wl1o=;
	h=To:Subject:From:Date:From;
	b=p0wK5AOxryAa8RUwWRf2KnEPg879DvEIxEVkY9d9K8eBRmm76yjnR9OZgf8bPiJyY
	 u72m/Y0lUX5fgDpIzGgt7lSnyT3z8lrlBzi4G0l37Cil1ybaXrUZXXBZ18QP36TTQr
	 c+dWEO3pDkwytd7v8onuzrDSNH9BvXBs0xDv/8WlO/yhc9weMklkTryDU0eX6gy2GQ
	 5YhtzBegLEA33aFK0sLt6gjjF2TwQXg8YFIQV96xe6oouQNtQ5E16OJrRhaFbn53Ky
	 hI5waJO652osBaYOojeocKmUuZI6AdpGJGsKh2N5OBV63ynAdsbevLY1eh0ogQrP2O
	 0iyj+iW7cBLjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97112C02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173866655360.18478.18053467892388986731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b2778081241a73545dbea8a4a90dd78eb21384a67d116479ca4ad9c8936481f
Date: Tue, 04 Feb 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738666553
