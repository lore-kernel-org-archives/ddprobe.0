Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCE0C7E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86A33C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671508287;
	bh=/7YR9t360NQLy5E7zhcSPfAyXpzA/YSHGUayB4q3JfI=;
	h=To:Subject:From:Date:From;
	b=nudX+/07RjwzHbSGvh08Uro/RQq3wU5+8LS8Ax0oYv9qy/5XqFHbrhy0Il42ZIB+X
	 zJZ/J6QvkEtKUrKRmZhIWH7hGKSknmgrLgQyn4loQkMLD7CqjaYqkMCoPTcdv2OE12
	 i1gRqXAGA4igUaldHKXhOHCUK9ccHFLD46IZ5lNZQbZAZU4/XEI0G3d1q5iiKtTS+m
	 4tYznr2lJRp2fyEyJ+TnFssQaN9E0dTaKj2PXk+pjh/O4stP0Ah3prhZ35dTZDC7JJ
	 HTJRq0yfZUJpZLWN1dzfd3agvXcaBePzUzPOIpJODmgiuqDRQRjVH07LntYVDPfzLo
	 uN0heYBWiFxvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6843DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167150828740.312.14507625508482365988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57685581a1a57ed647ef5d26ee19c69fcf5dd399cee66c4e0d66e9f2a2e99473
Date: Tue, 20 Dec 2022 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671508287
