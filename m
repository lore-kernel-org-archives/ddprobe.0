Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC6C2F21
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80EADC433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674061887;
	bh=FD64zdlZxs9qAAC+WQ1VqOr7RUAlmRwwVG6bIGF32z8=;
	h=To:Subject:From:Date:From;
	b=lGy6iXvZzrLSAX9aRuYakmFMFsKvpV1YQyC/g7gcxM3x8k6GGhneVU535MXW0UB/1
	 wrXDekDpO+Y3rJpCqrwEerWMZL8SGX3GzzsOmP9wmJ5E1Vu7qZF/5kf7LUziMo5jCG
	 OL4XdgrdRtmD572M2vQyFHplQgqFs9nubaPeux1xkWjvuuzjPtK0yS6aDliaNSgqji
	 6Oo17TOa0MGlojgeGVcXQ9Z//1uSHfJ2pviP1PiVelvh+pu69rPcKdOCe9WC+aZIlJ
	 b1Lg1o3sJmlbhUuEH7gMF2btad/1alytotcYuht9CsBzxl1l3NlgwBbz0Z3LkoJcIL
	 SP8xCMy91tSlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63004C32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167406188739.16596.3651908571427800867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 150542c765701aa117752f75d8fd4a1cac02856de00dc07e67c2cb857a798f12
Date: Wed, 18 Jan 2023 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674061887
