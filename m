Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EDB57E
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 17:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646414784;
	h=To:Subject:From:Message-Id:Date;
	bh=yBtS8uom4dae08p8MCUO/WwJHeKUQHwuSfNuwtpU2Fo=;
	b=cDDaPz+qIZkpfIzywH8osyTxpwYL0UvYRTxDpP/KUmH5GCIG81YhhClEU4a2PVwX
	eFbvdsvrKVIB+CUfV//ivQ0FqDVh8KqizD5HlRTGM41VTmMhil7h/PxXVuxj+nMKYf8
	AABVzlb9T6poAv+BFFf77RGazHAq/3BXrxV0BZcw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646414784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yBtS8uom4dae08p8MCUO/WwJHeKUQHwuSfNuwtpU2Fo=;
	b=QsNz5xaP6Cud/9oytcLoqC1DJXfAlkOn8BeTtt0s8GUW+uwIoI7rB1MyCIf7uK9b
	whBFitXzr3K7xtwhnWx9d9qWHHM+hRWbeJqHDYrkfFKjEFeWVkOV5HjzbZILEFCi/cP
	q/2f5MBUiS/ZfhvDvdXm/q2NtAHUNr1p6CNMSvH0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f55f7e8e8-8d907f72-c0fa-49a2-a810-0279a1c5bb2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53945825ca317505d980cd4b768910a71e27e453a89e1f3f168b9cc603a5b035
Date: Fri, 4 Mar 2022 17:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646414784
