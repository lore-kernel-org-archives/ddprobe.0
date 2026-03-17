Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1428C35DA40
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773750894; cv=none; b=LKw2duM26ozK0aXb41JBtZsL59DSGXjkxZBnszHWC+3SMK0ivOCnx4zHJlyWQ9sIusCKKnxcgdLLkuJsDIGMTmRK6ZIYQF9O6NDTyKg7kR7ztYr/wLYBHhTzEsPQVkNkuKSqQf3xb6WJM+IACk6go016WjeU1ldSF6lJHcfmZ1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773750894; c=relaxed/simple;
	bh=ymA4ag3/uSANKzz/gjEPv0vil8xx+QveyQMRlZjg3qE=;
	h=To:Subject:From:Message-Id:Date; b=I3c4SvC3w/3siy4ufqHPdaJGAmnbJLegWgkGYTJQV50YgFi47Mw8gvI7iQ0hnCjk8g5GgN+7ham2f5Vlefnk+hev6g2bHaJHlx3igwstWYlEiq1OOW2zUculAjLPTLbmZos8OJ+irjdAkJsUisKodolbfuFBtuAE1o/5hcQYQ+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOxSB3qE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOxSB3qE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F6DC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773750893;
	bh=ymA4ag3/uSANKzz/gjEPv0vil8xx+QveyQMRlZjg3qE=;
	h=To:Subject:From:Date:From;
	b=gOxSB3qEaF1k879FAmukKdbfFiG5sbA0DP9U5O1BfNGO/VAjHwCcskbKTOE+bQO7t
	 70UeF2QF+Yur/Oa2QXUlor/yVPmzKjkcGsJodppUh+KPViS5H6QXCtuRWsthU9ax+6
	 AnzL1X7A6Dfamj3OGoVYDv4asdyogt7/cR3UE/1STKVW7+Fggo3GefnZ1yRFz12MSJ
	 1GJFX9HQkHPx5yZfy9y2UA/QQhfN6qUYU6cZPAjwB46uSMTwozZr+5RcBWRg/lPZIj
	 zmYFeOiNthZg8TeAbcm1TLdOJGoMlr17OZyUJznO20xPLhZbac54pW3brpeWX7IO+o
	 PUf/+a3VMyuFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F821FD875C
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177375089357.14009.5574918907053558728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d0f9ee64a55b0f609a04d799f7dc897db378f4c598b7f4438c799dec7978330
Date: Tue, 17 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773750893
