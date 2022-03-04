Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B30777C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 04:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646367385;
	h=To:Subject:From:Message-Id:Date;
	bh=oAhFoRQVWO0LW51fhHOjjbwm9NcxKWIDtG7Z72YcPt4=;
	b=HkvwbCaxd3bltDeKPP+UDLXCkTcm6Hh1qiD75ZIZGCbMby/5Szteo1I9B3W89SO5
	oaQGzf0w5Sj82qE/RCXTYav0WlKSGOE+0wotRyzpz3KqAkr89nF4xpEAGiu7BPOyryV
	+/gL8NXTssXVEtG52kkTUsIhw2GV+vrCHL1dSKd0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646367385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oAhFoRQVWO0LW51fhHOjjbwm9NcxKWIDtG7Z72YcPt4=;
	b=YyPX2M+PMh5dFHteb8s7DaE20hNbhl7/WbtgS8MYt/v67IonYXQuvIQreRBvb6nR
	uCeB0x4MXd+fX1im5PNIcoxvhOerbBfgL9U8tU6RvKyTvbbRVd6Wiq9bnFLJDRKZqeA
	y4KdAIwh3MxJArrjdI0/VB/te/dn+1zRTrfeOnJ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5324a4b0-be18592c-ca62-4ca5-a2f8-fb7f26367a6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d0850e709fb0e14258b74513bac44ddd85c95da1af79c4bd9e516f1bd0432b7
Date: Fri, 4 Mar 2022 04:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646367384
