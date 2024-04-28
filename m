Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B621184E
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 02:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714271543; cv=none; b=e8OnZbpz7NfHPuttTaBAVJwPxPG36TI75Vs8f3JcasPrn6PQNgCmkHi0Q3Fbpq9gfyAi3ijH/3Yv2+rrnEfdIDQnwEk9HNG5600rmOZ8LeAG5/mS7uKnHKisZf6jqF0HwwAWlqgOG7kMeWJXJxXsuSzyW9e9FouVGYArhGcLDG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714271543; c=relaxed/simple;
	bh=pULly9XdOv7n+5k2OTK+JAm1wpTLD3GtLNS3h8ywQrA=;
	h=To:Subject:From:Message-Id:Date; b=UbytVrEv+Wm5zdZ5FN6Vaps3Utsq29tlv5aOzt2MBO447tpF/2snyRAULW5iybUTDB1OKcIQCX8OazN5VgWKLWQsqILCR46D+WgcYBee3q7TkcOQFa+vhWpu6cHBSFOeF0TkpaGpmKO7BSOAjWz1OIsLfHsVIcKiNa8cXnlYJ+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElWWAf6C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElWWAf6C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE122C113CE
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 02:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714271543;
	bh=pULly9XdOv7n+5k2OTK+JAm1wpTLD3GtLNS3h8ywQrA=;
	h=To:Subject:From:Date:From;
	b=ElWWAf6CLrcxOvUfgW4ZYxXurEvKL0Jf4WeR3/tNlm3i1gUOzjK4yMKkoz9WV4RzU
	 6IKwoetZPtLn+qcX7YNMybxVmC/es3GZyNAqn4G6CxH+y/Ae/sVIEex2HkEvX1b+e3
	 pSLTdo1j3kBySKYypb13zUrPsmHrKiqILvDWAzTPY+5V9dSQ0UzB8uI7LMudEcMhiL
	 exLZVK2qSH/v0sMoJiDRtSObzy9BStt8QMhOBrVW0m1W/+LafdEWJYqHZnIgL+r7bT
	 9sBEhq2LAfWi3/8FntaQ6ig2JhbSR88aYfMoxRCEQUrL8ooRJHI/YaASv4eOzBEgna
	 IImK2P0gcPA1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3456C10F16
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 02:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171427154282.31688.5705126006571590652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a046cc9e63f05273be4eb819276418c023496626ab30f30725e13351dd8d7ef1
Date: Sun, 28 Apr 2024 02:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714271542
