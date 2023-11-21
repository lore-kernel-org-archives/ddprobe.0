Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B1A54F82
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkKO7zaP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83BC2C433C7
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700576896;
	bh=0hODGdTT/oc//55/Vcbdokh60VDUD33+Ko1RrW06kIo=;
	h=To:Subject:From:Date:From;
	b=jkKO7zaPafgd4mi1zk9ysitUcsjUVjcR+8VU7ST9ZzI7gpI2HOBCK5UCCjDYxPbwI
	 lF1VNOuz0vYKOj0fr6hU2tYQpUchL64sdp8xSVOpgEZTPwLctP/8MeEluT/THeLUZ8
	 vy3rmcOFsgxn3EWIg7jE3NKdIAbPtooSMzfN2tVQQT3d9KDAxAhbMe+DphCZjJT2eS
	 ObuoGB8djlxu+CAGcXsqnLAcj/AGTxMzUk/P19gC4x/zxMRnmWCL8g5f0u7SK0oE87
	 ibeUgIHJrHUPazn5/W+74Doh1USPmljr+MpohTtyelPjuOz7cudZFc5b3+/KJDkGrw
	 pg1SedJvjgJEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61438C61D92
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170057689638.26751.2934362814952331349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d8c30ab11eba3d1302ccdf989dad5eccc355500e1f3fe35397a6a39aebe82b6
Date: Tue, 21 Nov 2023 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700576896
