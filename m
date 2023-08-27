Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5453D63A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 16:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D638EC433C7
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 16:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693152248;
	bh=uFt9ol4qlFNh9wVcA+H41vyyAfnm1YoDZE9NsGea7Ts=;
	h=To:Subject:From:Date:From;
	b=YVNvS+InPOMXtr5FpSzVOdXvbdlVK5pDGtL2/x7+/ZJ0lLi4ajqcaWiQ2XSN1/t+8
	 i2TztJnAENFlzZkgZsNQ2vde3zVBAmv0F7KN0Km6efdHFe7Xf2JVGRvfd++h6dTomk
	 xVSBQNA+QMHBCphdqj31RPZBwam3hdIDzpYJltWPqIeyk8hSj/Zn0O7nZd56dtDYnQ
	 dfEowHaeMbFeIV0vSfdxkI0QVQTgC/zh3EFIv4OSM56ydmZo6+qHh4w1hjf1yp9pt2
	 khCnMXUMVuoEU5q83efBArrzmFSlC18BuQ2iTm1oI7akqE0oaMNRuj/HP5CfO8GlqN
	 yis+j3WNuDr3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3BBC83F01
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 16:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169315224871.27156.17555390668935396276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6486d0fa5589c348a04189c9f296ad2bfe9b7cd21eb106c3ed2dc45191d2d62
Date: Sun, 27 Aug 2023 16:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693152248
