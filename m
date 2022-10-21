Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA27B6130
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D76EC433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666380653;
	bh=U4Ty94DqzT2GYWmoDoc8znyzV4XfdxeFpMvFV1r5qzI=;
	h=To:Subject:From:Date:From;
	b=Ww1mjfbEP98VRUSLNEx08aWm+GDNcGKZnmW9gz6NqEcUExGtTsivohuXNdjSTY3X0
	 /+QhAhE/r+vuDhh6TvKmxJi3X3y3pnjS8biDgPq34ZR0SMxp48gRI4VJgig8tl8hnz
	 tncJP7JqHmWIiNskkk6ei6DuZdn4I3l7ltCSQaN5U420dC4ocYl6ZN+sBY/YYNHquT
	 OO2QikS3TfExTizhN8DS2lTCUtchzJ/VOa0Zrb9T64a0ZVDxojmbD4bUPUpTMWBXs2
	 v6GTKCGel4fyj06ElBfGdzfdis6+fAN2dIAtvU45SNLZh3G53XxTa6XR6Z2LoEIm9O
	 BYHOeo6RnCQWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53CB7C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166638065333.12227.18024657416884118078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde176f621e3b968f9273ee40be5f8f0fb5ce0128576314f626d8a7e9d8a74f8
Date: Fri, 21 Oct 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666380653
