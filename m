Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209462629D
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751414394; cv=none; b=PDGiUy/13HSl/RkCvz6JlXC1OGYFfxEpfBlV/YVOA3Peh9ZilsIU+cTtGLfGkK2OXOKLYzaWsTKFzGt5ZrU+2GHteMOr/V/tEtpRNbs94FaOs0Sbp0tdS3lX8J66G8GZA+zwE2pF1t3OkNeZM/gM2ZB3mSPYCyvXq8s5k4pVGo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751414394; c=relaxed/simple;
	bh=FnV4el3BRzBvhsYN7wwqiLvriJBGoxlFjS0OBZ01Sqc=;
	h=To:Subject:From:Message-Id:Date; b=UsPwxykW+kz8/awtMe4Un1jkw0+FBf0CQQg3K84/yGfGv3C9mzGEb3Q/lSqqrFxSh/qVvm29QKT+p/vng9Sd4ZPaDHktARBxGO8Y5YaG/msiLTleHwQJPH8kJypwA8TZ7X4XYAb/mJWOt26XS6D2CxxGRzO9GNKd6gvMdFnyoAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dyUKta7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dyUKta7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E890C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751414393;
	bh=FnV4el3BRzBvhsYN7wwqiLvriJBGoxlFjS0OBZ01Sqc=;
	h=To:Subject:From:Date:From;
	b=dyUKta7kCVN6YMWp4tVVgFjdAPji0XJlF3pp7YF+H3AXnBwNakXHFK8QXBd2LtQll
	 9vrJq3XAmdV0LsroJH+tcE1AKrSrsYHtBlN4JBlv3O9Zic/WimvrdQvzpX6OO9nvcq
	 SNEYraA+m+fiu9fUJLklNQY6m7zi6CGSl+EuR9ouMSG/ltkNozG++09UNlka+RPces
	 rmhNuB1/n3JfHT29f3hnwHCmDJ7zJGI/ib3XPGbKkKQ8Z//p0frE9ZNpCfFHbcKcmJ
	 2YvTEDFE2sM27mq58uO5EuarUGD5pJ6D/qZ4xF1vvq7B2kWVfXwgDfiDtNKvWIU9x4
	 BV4gPoNfznv7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91331C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175141439357.11800.3074658761077831832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db30bad103f664a22a47307e437593ff7eccc41f4dc61ea6652fcabbc275addf
Date: Tue, 01 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751414393
