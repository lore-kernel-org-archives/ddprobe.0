Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4374E15A5
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 06:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652250599;
	h=To:Subject:From:Message-Id:Date;
	bh=oGXtP3fko3EEi4Nwh49v9mRURHg3xCqjYg9mBSH/rSE=;
	b=Ns6WwL/l/g/x+6hprq/ZIoF/3wMPzKnBOugTyRB5tfZFprFGbYvEc0zlZpaWlcSn
	v75RUAB7IyDDgpK7mIealsfPtTUy6gAHPxLZO589lsKDK4Dw6oUGjkSNk+5xzUWCmBz
	FvMUuYqzJwtdja7nMpB7moAYbH4odLEF+q33/CTY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652250599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oGXtP3fko3EEi4Nwh49v9mRURHg3xCqjYg9mBSH/rSE=;
	b=VmYZtVchQJWWNaYCM4S9VuH1znSn2ICd4I9kfXg3ejyROKPa7Z4NTDRhmA7D2Nmo
	vr/wvMPItcRpvSD50lHNEYBR53r1xL0srXUY9aFRp5E430q8bTeJZXSOmUCIagWI84W
	+TxJbU38lhaESgU59Syr/J1bdvpmkzON9JJNC97s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b1cf5f79-facc7aeb-51c5-442a-8e79-b819834e3356-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d62a52673237e39f5bb1a8b0b4e9c72ac7db0eb82cdd78651639eb54b3fe82f
Date: Wed, 11 May 2022 06:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652250599
