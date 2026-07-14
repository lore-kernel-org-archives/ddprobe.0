Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89C4326ED59
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784035114; cv=none; b=gxP6Ioy8P1G33v5Cl4Fr5s6vHbZ4Ci6AlLYFsRweo83jLRQtDqpEYnkwnP0l15voetnZevJJM1aJK+TLe515+38lKMJ0Eu4ocRimJHoS2YIWlGXwz5O1tWpIU9Dx9iZxHnm2TqYdvECA8rbRfoCCmd+5K2Vrn8DPzg2YvfjUoEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784035114; c=relaxed/simple;
	bh=Rg85SqFk6wi5OPvUM7q+RX7d4aYiCX1p7KHw07f+Zd0=;
	h=To:Subject:From:Message-Id:Date; b=fSiV2vwuxSMGUTRVz1l1NP87eUC3/+1XtSJKjYKini18g2CkAlhNQlul1tPCS6ZYz7LNbulbMpd12p9c0m7nl93g0pGmXgsIHBlPoLX/wO3AoWCUCXKCYFHO6sB9yzpBXkRQXYAQTn34rcC5M7cMawvvTFl0PfnTOviQT8U9mg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLovHcnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLovHcnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB36DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784035113;
	bh=Rg85SqFk6wi5OPvUM7q+RX7d4aYiCX1p7KHw07f+Zd0=;
	h=To:Subject:From:Date:From;
	b=iLovHcnQ/qIiiVa3xLXe5d3ieIrI/1aAME5TgRhlAwWCeZMovVUfVJgs0g2lmr+qM
	 hclRwStC1ySmiI+otpBhihUrKEZVkqKO5BZzI1bGF2CNpNn5yEvdH9iT3cPqbiff3/
	 uuM+rO7NjiUvHxpNH4rihVoIn2d7sONsyBF9PTfKbR7RqT5s+Y72Hhi2DM6CnaXlVM
	 MAag6AQ71/dZGOx744Yq3MbCo7wIP0AVGN4TjtH9ND4fAPUX6U4qruDEOln2DPxefe
	 kZHOEn1S5ARXsada6RHzks4w34ZJnhWvu2NtLjNS5ckIHsFIa2D3WCkJy8y+Jp3AXp
	 jBVhhyGjmWS9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91E6C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178403511368.28005.1220220735614186560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 618d00fbedc535a2bfe7513546a57075900efbb833d0a52abd8f36eb9135a935
Date: Tue, 14 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784035113
