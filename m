Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8868710EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 01:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646529085;
	h=To:Subject:From:Message-Id:Date;
	bh=gCHh4CbF2fKYHZrnXHj8hHw76KFnxWN+G8HTcrTEv6U=;
	b=HSZK+2lDVbBsdNLNbNEbk+5wQ1uY0SA+kG7br/4MZWeeT1lUuhMMBP20x3ggsBVJ
	9/GZx2eNPh8SWuXgDN5MC8bDmzLxjrsML1l129dcWvyx52egVR5aKVLZ/fM1a9zpKAr
	ajjr4JipaueLUjcHeysTYzWJUr4grfZC7hCG8l3E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646529085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gCHh4CbF2fKYHZrnXHj8hHw76KFnxWN+G8HTcrTEv6U=;
	b=Vip0LRIv7dsVIjmRR1Npz5ISULqyMavAx2Xt8fMlgkx/MMbcLBjDgFSDE+mLMEqQ
	q9GS37uF2i/+eYAUOHcx3ARIm+bd2T3PzMd0DfAhqYzoOGODc0Vee9iVKZXdnPpwMT/
	38of7v8fRE1d/KrH37ZwgCpMTK/Gn+1AfafzwbNU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5cc7fd65-99fdf96c-ea45-4909-a236-8f3d5786a4c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b86a548a27ba2112e05c877c016bc3701d308cfef73ac21175386e01f35c99e
Date: Sun, 6 Mar 2022 01:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646529084
