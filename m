Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E137A7E3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F966C43470
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662715253;
	bh=5Pp/s6jqJQIz1Xh93dLmu4cU8JN/AlokUlbexLFFgi0=;
	h=To:Subject:From:Date:From;
	b=f/l+pv73xGrMTUBPxz6H3yuXE6zwLjxx2lLDKHEgIL8pmU0GzAa915lMqkBrh/7VR
	 7kp6Jd+GUz4Bydl+qmfi5zsb2zxZaO9e6QOqOsUomuOjaeF36Hqq5KvtOZtv6HlUr9
	 9jKn5amOZ6a+VGPlMgDioZvlOQ9P/6ml2sMxwyn0qvOI6jpXaAxO0RRlIkIK0qEwN1
	 5kOuhuCekJyGR79D1EVItaWi0d9XbjRO4jc9ySfcfxRyGdkFCWsJBwCvc6ITCDKVLX
	 hFTMbgbOBaQAotE3yxhSP5PXsfwmr/x2T4UWq2lgRQSPr9A90uhAQYg6q1Ysxy0mRL
	 mA3x/1RgyQ3iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C3C7C6FA92
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166271525336.21971.1697506410901710338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f39d67659ad66bb4a6cae6c3af059bc18f7aac46d243f9687b896a7c079d363a
Date: Fri, 09 Sep 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662715253
