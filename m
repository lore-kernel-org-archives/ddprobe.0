Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0A128F1
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 14:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715178743; cv=none; b=GTXvIrCpPGnrUmpCvP98tKBWsdw33NnCGz5HXeCZd7u+U+VXIUctq68muCzVeEcRzpxYbW9EH8odUKIapl//rlSGM1cWMDUUdZZ5efgWaooDjCDCjxolZTY94AI6WfpY6nnBFcjLYuO5dLMYK5b6wB7xSgJSqTMETCkkY2DKrM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715178743; c=relaxed/simple;
	bh=23M7cMtIBj2Fv7tR7d0zCYEB/qc7j4OGd3DvPq7bi6o=;
	h=To:Subject:From:Message-Id:Date; b=AsXrIzQNkHbmtDAlBUs+YEtYSz9W+yGHmzS6W1lqJDAZmSBoN5k+7n9w4HRJlhuc0Kns/tJQBkTCLsjtvYL5vaYbcW74aYT+w+0UZ0epOURPW3bi6RMzmo0O3Vn/24Yp8bcgiiRjvpgNPAdLaR05QN68f/XmUMkBYS3CQa124EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYL6gy7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYL6gy7E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB588C4AF08
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 14:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715178742;
	bh=23M7cMtIBj2Fv7tR7d0zCYEB/qc7j4OGd3DvPq7bi6o=;
	h=To:Subject:From:Date:From;
	b=FYL6gy7EYLleV/UP/d8bBNAPqrtV4QH3DIelCWN+Xh8G8wWjXPdHFWGR+4WxVut7y
	 /9peth+ouD4mr2N88EVSvoJjjGHWLYXJ7S6FtgpFI9V/FL2tHxHJQldvfUASTR0dYW
	 dOE0TPYHp0xWAzh0hUr2uDp7luAWT3UZPINL8IfpfH8oluK2965mZSaORa3gnBuFwN
	 6QKT38uGbsFsFxhUDT9LbcsmG3AHBo90ApAB7kQRPIppYKU2hwjO3y+JCFRQL2Z7/G
	 RPX6Shc0dd5Ndy1x7SMda/LoGuSTynuOVvwmlnfLsgHBMbo0csG9wq4csKjZlNXg2x
	 qL5A1aFj6M9Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC7C0C19F4F
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171517874276.9339.14224073650377563357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e6d26a2e023b0632b6acb29031034926d68734fe81a9f21656035d48b5c8e4e
Date: Wed, 08 May 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715178742
