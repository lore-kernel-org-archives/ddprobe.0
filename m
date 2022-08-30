Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D134D3C2E
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FBCAC433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661875253;
	bh=JU3u432dMyObq5Bd4vLdptSDUJRCc7vtbB5DF0jhegg=;
	h=To:Subject:From:Date:From;
	b=H1iwo80xUIZjAT03KH3PO9MbvnznCC0429GcBeVpFPhUXf+NdmVXX3M50nfVAlUX3
	 dccYL8Wluw/Yc9SKsIpGYDVt/taWpje12320VtePFirmnAmrUYZD09cyLROy+uVJ3h
	 Jre/i0IQUO18n5w46ZIh+GFuN9hGLzatBU9G9qhg0r93rOyWlT4GUOndb+ppDDwwak
	 d+EE3374WQXPNpxXYZU0ZGD/+WkpWWCCRvQHJRzr8TTrqXY0DJzPNk49leI1TmCRXl
	 Msw+Dw8N3nNk80ZpJ9K465/PBOhWKC2HwUfS5OFgxt+4ZsLJPRolJMc/fYjffQUbbK
	 UQsoL0/8uhBbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64180ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166187525340.6882.7393811878796012889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7e8a354094dc9e362688904b843f481a63f5049a432c08f16aa59c6d3edf28a
Date: Tue, 30 Aug 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661875253
