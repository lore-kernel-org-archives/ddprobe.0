Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB162565
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A1FFC433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665394853;
	bh=tRxG7aS4ZrZouNlqhBy9NT8f+bTc+RZ5yQXzX+9d7ac=;
	h=To:Subject:From:Date:From;
	b=LxQi62bw8FjdhARfoxljLp+LWshZE5QkIcIHwXGzFhS9PL3BeGziDribbQ6LNI/MY
	 a9UIGiwI4+RwvyIDhotMz0dnAZnYZHe9MSgVIUyl2QvxPwahJqpo60b1/yyJQUJ/R1
	 9j3MEuzRrweWeyQk0rATQh22vuHPm8W3Q0HsN8jv9BtsjpBalBxFG1ApMqeq/WBxqY
	 +mwisREcX14dyR7lsyjBnjb1Zeeb/Kn5upBFH9V3lVnbP/f+09JjiP1OeBbLqmTNI9
	 QtAMs7ipW61n/K8Ibf0JjF4qt7nn2sIvu1/EcgiKEka90MgGDQ6S8izNYYab75a1ja
	 M1bSkojR7tBEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50F1EC433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166539485332.28812.11645793053402094736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce2dc0754ed6cf31de41dd90e6fc6bf1f59d97df18ddb6a27b5e166633f59b8
Date: Mon, 10 Oct 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665394853
