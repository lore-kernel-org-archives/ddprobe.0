Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A14D7FF
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659660652;
	h=To:Subject:From:Message-Id:Date;
	bh=sw+RuwAN4Ih4YnsaI/DfhXvQNsB8BRIaefXZPsRcLok=;
	b=lFY20rpJP6mgKDqvmu9cNhZL2l0c+q89pQM4fei5adV+oMFjdAE5Pf7SzAYLxZT3
	femlzOwHlW0pPjycVuuQBwGzTq2zEcO+KpAYuOmeaFyeonyeMtrzORtiqYPtD2B8kig
	Plkyg9dlyI5x9wuICmp934UD5rDs5CqmKH538haI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659660652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sw+RuwAN4Ih4YnsaI/DfhXvQNsB8BRIaefXZPsRcLok=;
	b=LM0D8z5FchB/Lnsww+GFPYBlkJLbW7yn9StSiy5gbrBch5TQ6O2tWmpXiXabAGep
	G3WK859A8COtwUrAqHMZEnkQ1p7zwURz1kZHO9pHik7P9escwxVhgy5XEf+RwWGdbkR
	17z7sTT9MSm+7qcCYX+M300Btk+4AMVQ5Rs8uFNI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826b7bd042-268d8958-0db5-4b38-a53b-1f5fc628bba6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7531ef7fd92f334f39c66290c31d44ec93a0db54786371dba7fde05c3b86e4c
Date: Fri, 5 Aug 2022 00:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659660652
