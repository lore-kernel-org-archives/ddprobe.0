Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D437215A8
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 12:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647607285;
	h=To:Subject:From:Message-Id:Date;
	bh=nwiZgdb3f3COIbdtc0eP+pZcM6QBF8zieVXQnOvDA+k=;
	b=QU4QJm9vVaXohaeWbr5ZFRHCUhzHVUCAtZOV86qSsXjExQbklvR+xq/q/1Xvk3mz
	QIyCOfYWyN673qLhz7GEbY3fLXA5Ad/e4GlU1AnuQWhEOY0NesS4HKN0Z1ffEkjqVdY
	f66nV/fXjV568BcjHacidYe85FHXoGiSgu/Wo+RI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647607285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nwiZgdb3f3COIbdtc0eP+pZcM6QBF8zieVXQnOvDA+k=;
	b=Z47BNGWlnJ1q4JXaw6/pA7lmNA0K1PPfaDhrRMo7u0Jc/lltaqA/mxUqzDGtnax0
	iInqioCsXZ8Yl5IJ0/CmxrF5NroQ7DuMwRgOZ+v9pCR0gjI2FS49anZlAak78BdQOzI
	eAPw4HvY166jdfa0Uhya3zpUBkzVhI1L7lz5f3d4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d0c0424-b26b32f8-2a4f-4c82-8c61-46ebc51a97eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 007fa9e12799f1981f95e91ee912a9101215b6fd087ab1d6e0ad65bb23d18f5e
Date: Fri, 18 Mar 2022 12:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647607284
