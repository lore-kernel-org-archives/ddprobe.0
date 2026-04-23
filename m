Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8766D3E1CF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 09:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776935854; cv=none; b=lFvM5iX/BKTRw8I0XPwk4p8D47jYZNzX2OVoccLp+NTPQke8lZGdtFqmsA3ViPyyxwu7CrX9hXSS5XRqdg2c9R7B/kLrSOEO9wH0IGXyWgGZQ2SjaXwxmde4Qgd0zohQrp5nPTE5/t3b4/QOEaJMS2YXA5i2U6WrdPVSpwfrvw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776935854; c=relaxed/simple;
	bh=HZEJvJttk1FtoRjX8es1I26Wv6xF2iEeLfUPocVXF/c=;
	h=To:Subject:From:Message-Id:Date; b=TtY5270M6BZAOlsudQ3SfeORgAvY6cwSB8/v6b/6wvCTonHARQA8QrgFBhqmr3GVJ/X+CJLbAjYwKEpK1IvOfQPWYAcgtf00QJoMu0qfIK7NH3PmOzYTCsP4HNclgMGpT0ZmQUyTDjhToRyLQSvOYQqEW3/Zp/ZM1tCsVlFnTC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjmxitNp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjmxitNp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB686C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776935853;
	bh=HZEJvJttk1FtoRjX8es1I26Wv6xF2iEeLfUPocVXF/c=;
	h=To:Subject:From:Date:From;
	b=JjmxitNpc8QqaUGkR9VD6rVPWNlQVea6qKQPI1FUMqZ0MZNpdnRB1wqnqn7BhgJlK
	 yLjTXGq6SgPLyCkC1JHKVgJ4FX9O76ekkhMHLIkKeHq78Tj9AVzP8xe2PFdcnrdGC+
	 WJDpl0ImF/if8anJ76AXCxdzfNOT2KBzscOl5NsHXBVBVUh6iuxzMJ87QpFKdyM2iR
	 xm+uOMTlGiHok2LtreXCOtG7OueTd6Of1Lo+Z2VQZrPrMcYSFMSXhtLBkCRKk84VAw
	 zON974QPbAP7seM+1FkYZLdlDiysWq0HLcPTehy0bxZyHImOrCljzI6Wv2ENheKjjV
	 8PJyxu6GWN1sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9641F9935C
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177693585368.29862.7314906324081767301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3405cf8a2631458220113e436e40dab7530be0f17e9c3e10002938f142938c4d
Date: Thu, 23 Apr 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776935853
