Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0E21C6FF4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747110594; cv=none; b=QWgglYigRyRkW0v/O2h4Wn1tnPm9vAgHaCvKJwLAYiDz6VEIhknozyiuO4K+lGkEZs4sB4Whh68eWC+vORIoSF6ApsKSISFxmaxFE4d7jokj7nmypLlce9jVUmI98OBxfnPcyw3RJ/1YoTAt8tAWi7qONB2e3Bqe2l65r9wiS/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747110594; c=relaxed/simple;
	bh=JzFWv5Ku+2qmeDd+HYuvNqT553qlgbFzDClNCy+shkg=;
	h=To:Subject:From:Message-Id:Date; b=BSyS3BDAdPzrGI1fawKXA7H0lSLHwgvLWAcvTx+Gn2s1OYf1h1waoCzrejIn9QZf2p+Q44z5LxUtqOBLLOfRklLosx79okoDFYlBJthy0kciDZdsVZLKhcTxcRz9gFQpDXuAsbf7HA9GY0HmuY5kXH7oL5agaYD4yLElqwpIdZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQIRGaLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQIRGaLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C9DC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747110593;
	bh=JzFWv5Ku+2qmeDd+HYuvNqT553qlgbFzDClNCy+shkg=;
	h=To:Subject:From:Date:From;
	b=vQIRGaLAR0fzSNOsREsT7vg7HwhqjEoAeqR+LQEBsTkRH9w3etKS/WdOqarX6qIol
	 UbayoJUz6Qdeqp/sgqPf2HuBmfocKqNhTKbpJeDBJ+4e4qHhwb4MMzO0NV600j3v57
	 24Ou507rFksOo9ffgzPAZBBk4hDLcMvSM3IzS/1ucaUJoKtw7F7EBeDCeEEbm+fQ4W
	 iEKKu2JRIRVJVy4E2pMT/2Kp/n3oW5yo+o9/yHAEcqJaSmMC6JiMHlJ92gfXkPcZ0q
	 NgwxjEdqYGrGvZR30LszOBReEIuHvG0kS0ZJ626rQmBMea1PrRlhx3faLHpeKYJTIS
	 H10RpOa1cVWzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C8C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174711059357.4906.17408673084369187622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88aab8f24b7dbf9a06553d108fe1f183811d3691aac08aab30572329e953f6ad
Date: Tue, 13 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747110593
