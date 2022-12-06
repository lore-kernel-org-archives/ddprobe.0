Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9DC567B
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 22:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75E21C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 22:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670365854;
	bh=zPyvjW0NItEXqF84e+WQ5qK5hKZDZpTnKMGx/Pbez50=;
	h=To:Subject:From:Date:From;
	b=e2bFQwjht8PfFsguGJkTJOqRlw3WOMfElLTFikMjfjLt4Ul0FPkkBBV/BxDEVG20c
	 qfqHz4v0ITbcAflhZgyTdR7oM8RhDcEwJG1dFj+8f8bHhmv2Lw3XRQmlDUL/7SYgoK
	 ScA/tkEA13bE2+yRznVYm+8WOb2QzgatiBxA8pIKaGlNaMvHjN44icLcc4abWXqHmR
	 63KSb9qAZ7ahi+9Dyj3CSJgAi2jcVvQoz93Bx9mR1M9SlGuGezSK9Jvq4rHzkYy5Ss
	 ca/WNg9CH/56o6gk1dRFFEGtuS2OffM8Emiavh9v7C9eJiSWq24NxNKoz8QxTh1S3C
	 XSTiIjOV3JtVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 585AFC3A5A7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 22:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167036585435.21175.17064361268327717900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2cfec1cdc3984ad71fa71f8d2ce0928eb64647855d2d91b1ab512db15b8103d
Date: Tue, 06 Dec 2022 22:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670365854
