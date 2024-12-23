Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3477462
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734994554; cv=none; b=dgKpR/fIMxPgTlhAeyyDYrvbn+3loHHgjV0O9ht0ertPl/Gwvvw9pa+jPviFr/g8Hn2H3qZfRkRDaqdhcT9r3Psvl7ZVoTSFfOWAzzOWEjs+0e3Abu5rsZOW+xrPYv5Q0PdIQzx9UQrl5Dq4MJdnPHBlq1bsLRsUkCJAkPYhJG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734994554; c=relaxed/simple;
	bh=k9R3twZCGHcslVgWvdGixtNvDLkLpV94yolNJK8kWFc=;
	h=To:Subject:From:Message-Id:Date; b=dETN8wbIAk2sngoLlB4Y1JA/+W8yvqwmBnAA1n39kzhtrZBo/1lj6OIjx3DB8Ow5aInWycbLHzxQIrrWaHQ5nKhsssYnp6BhumW6agiZM0vPlzf2RqNs4cZWReuj7shDJR6FcSRBug2u8PNgmN6PX9Y1HQFyIrTv4boC1xIRrZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=agBLW5i4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agBLW5i4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1744C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734994553;
	bh=k9R3twZCGHcslVgWvdGixtNvDLkLpV94yolNJK8kWFc=;
	h=To:Subject:From:Date:From;
	b=agBLW5i4PrXz0WwC1nMEX+OYfH0gWegZAe7PoVRC+6/UcLiB43AXKfvpgvlKI4PYx
	 jDalSOAWN6F3xAhFoZ9sFyh6kAQ0ZS/pj+RZzt2cvQfP/a2bP0734whrwK/fVpJKZi
	 OuXOQXFPz0JyPtDGSfLo/arVukAKBDqZj/NTD3LVypXKth127cEh2VTYPQE++QQo+v
	 1Xofh8Fxsb1Z+BDbtIKIZxb+Mz3eKNNYtStiHUz8hM+7Uw0G+BUvfmqVv5+qqsmvre
	 j73Hhu5anQufippgsTo1SplW48P2WIg/H2PKFDTZwv+By+M7iS/WXYJvK2P2OPQyiZ
	 RPWUAbmbItH5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D418E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173499455360.11176.2975178604961720173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 209e316571c37dce4713ed926899521f2470dc3e78ec37e84aaa7a559d37a6ba
Date: Mon, 23 Dec 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734994553
