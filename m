Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3092F2E
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 03:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645933584;
	h=To:Subject:From:Message-Id:Date;
	bh=XFemp7iTdfQuHVO+LFJH/Onsbhw1Ywr7vICi8OLWFuA=;
	b=EAN/ntgbgXROxlTNq34HSJtur0LupVZjPJm0L1C8dWAGavTz5A3JMpU9Q8EAQJH5
	XAtytS8GMakNsmJD9AotGIgOPhBotPlLY1zFS69okLRIlbfEkIjh1ROsHEzI/vjQODI
	Yh7g08j53G74+avBG6Lbt7uDLEY2aQmBQ3DFL28o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645933584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XFemp7iTdfQuHVO+LFJH/Onsbhw1Ywr7vICi8OLWFuA=;
	b=TeeTAbpJF+32Bv0e04O09/4KLOzzqG/0LW2ZnnMiBRYvYlApKCnhkZQSKOwwrn5Q
	kPi1zUSnNShS1mxsVDU5jlZsaNHFL3hdGh2+qMycJVYCcoqFXR4yekVl0zwscKgApKO
	Y2Jc3QJ6WdDOed7DPjushKG8lTyPH/kZNILr+ZBM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39496164-43578f1f-c908-44cc-b3a2-db9a47f1f4b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 476aaf530868afd3a0eca0ddf038052410618df624f66a3823f1d2ca2fcfc54c
Date: Sun, 27 Feb 2022 03:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645933584
