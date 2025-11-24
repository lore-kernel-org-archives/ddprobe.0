Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FA73074AA
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 14:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763994114; cv=none; b=Ut6oiB3OllQTcVL34YYGT2i+0SVTiERRocTBbKVyHCWNujXuN8KJBe5MTFklni6T5DD3Wc6k98n3+nwR46+E3vgKcMOZFK8aFwFgsLGSIAtVhEmFkjaHWWIbBlAx1pg/uecz1J4UKEHL+SFTq6tLnTfbTtDzEtFrv07rMWAG7KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763994114; c=relaxed/simple;
	bh=uLZqrLcgXeVZZgXq7n3Xv2Uh7fcnYPct8Fcm9LWfxq4=;
	h=To:Subject:From:Message-Id:Date; b=umVucdWpBnIAFAV/tc6JQDjxZaxSuh9qZfADF5FI3Q3wxGkM+YHn/MJSfIFntEHCb5OM8VXvBPqVE0g6V5mAkSL6s09FgBHTxad0diXCJbjA9+S7nRQPya3BZEWH47odJ9cpZzYHWpL4uqJhZtCpTCMD6On9mPv4LQa62ux8TNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sf+s/khC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sf+s/khC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB21FC116C6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 14:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763994113;
	bh=uLZqrLcgXeVZZgXq7n3Xv2Uh7fcnYPct8Fcm9LWfxq4=;
	h=To:Subject:From:Date:From;
	b=sf+s/khCPXhFADaT5DBs3FE7GkCnxRMVEaYwjg4oRJq1VuAnWZ8uvHyN8c1lhOxne
	 tp8hDaIAnN1q9alGqXdru9IA3ViG/EGTSBvp19gjPLMq6a6y11MTsCZgETOfRMkpXU
	 8r5T6NTLPfln0zk2FhPUSf7RZ/nmQdRz3Q4r0PZRzKcwS361vzScdVwzR5solgf7NK
	 u1Asz20NaKAQBFgnMXt2z9h6ebWZrcaR/rUSaBG8c5uU8EdbMwXgetEEzsMfjBfxbK
	 8+U7UHkOd5oxuEJFXYG4QtK8Bawfam2JZSm8PGcNvHEoI73VRX/OeV7QsQVnjIIdQN
	 I7q36W5eaQfqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E75CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 14:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176399411358.9608.8054651036695622716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e803c44eb67ad3cde037d3478bab6d58e9f956b45c00ae8d449960a09e45719c
Date: Mon, 24 Nov 2025 14:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763994113
