Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADCB257E
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 14:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1371C433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 14:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694356448;
	bh=Buuai3u9nm3iQ0bLnriGgl0liIk8nXXGYZngOBkW1xw=;
	h=To:Subject:From:Date:From;
	b=Gg/F7/6Qy8lVQQ7QMq99a8SaGhlLz424y8pr/Al/7bisGcMvjbkSaOOuoKbYzHFFL
	 A7ec0OAhejkMHNWLsWbuMohkmMnBSDWs5GxH2dp/AJkD6o6w8+HzNMg6OLIV5vDrjG
	 uwMGOCns1TWXhvEPFppAD8c3653/rl8ccFADhH+TlBXA6E4zoy8cprxaDtzIAvUehM
	 /saQn9PiSAEeKYLQIa9QiarONL5cMv71lB/7LNMLqhZte4iWlwJqP+rV/e/tPnZ83A
	 85397pM6lZrjMgb8onq1nCEyclvn2Fn5PiAiZm8JRN16rPCh6TIYkGthqDB8mLmVSb
	 nciwxqakaVGMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA96EE14D8
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 14:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169435644868.7575.2649151276606672767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e47e641b440ca17c806409bd31849864f9b6ab42066046db6b883d6d7d16aea5
Date: Sun, 10 Sep 2023 14:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694356448
