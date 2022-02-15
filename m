Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87E60186C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 20:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644957984;
	h=To:Subject:From:Message-Id:Date;
	bh=g8U4uljcGmj7fQkHUMCZ2Si4akqozGbljJ3hFytLcV4=;
	b=JbxcMAiMSdCDqmCtt9m3BeGdNysV8gDGexy1cfsFXFNo79SEB59cbJfOp84znIRH
	tlGA12qv1DGODHd5svnfPu7wZRBtrWxZm+oJLCcZgcK0FrcwGIeXLr0XRc79nWA7CsT
	dkRrjq70SZBOzii+XGeeeWbyO6OA1FPzCoX4b//g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644957984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g8U4uljcGmj7fQkHUMCZ2Si4akqozGbljJ3hFytLcV4=;
	b=MN3p2vQJ1wWlKGs1aFENAIJ4tT/mKRgULBZyhU3pRHj7cUznzByF4AuoDlAIVDw/
	DJiJPzA3Xv/gOlK8wUNmrzVsjqc+H3PmH2p8uaqgvlkWfbZmZ/hcZOQTv+OS7c8L9TM
	KoL+H1/EEWIktvPEWzcmjKKB3g316shcKoBBfw4A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eff22e7f8-7ef1b173-a40f-4e28-9626-1662b6763ec0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7d886610385c65350c6079bef78ab172d2cde07289380f5b30a569acd1dc45d
Date: Tue, 15 Feb 2022 20:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644957984
