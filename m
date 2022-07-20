Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257AF6015
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 15:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658332012;
	h=To:Subject:From:Message-Id:Date;
	bh=HxEcuxpCfYcOerjOe+KR6Viqaonq2ATp+sqrrMleyUQ=;
	b=YQ/rMZj2mDqCXCleAFDYUnCBCrfy1axVtud5/aP/brR3x0jwNZlldbDfv7VwJJg8
	YGYLrF7dQlt8sLmPC/YFr0WsgCAnu973Oc87W+CQ3HqFh74YRnELKiA7zXE12UClm/h
	HZfibouoxS9CdQ4rBfV37aka1o1IRDCXgAvdSgUY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658332012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HxEcuxpCfYcOerjOe+KR6Viqaonq2ATp+sqrrMleyUQ=;
	b=lEN4ummW71lS+BPPlFGFxm6aDSqgvZGa19vzhGkRInLnnN1VcswuzIeYiye6/EhP
	vMFxCFRPDkSUKsmzwDzgjnu9K6395YIMVxCSzqEHkbbTIN1ck3GSgqV2AHmF1uJcy9k
	ipYjHoe+LkfZ7xvGxvV9QIeRaBWYAGN6QtcrBLQM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821c4a5f1d-4ba3f13f-5433-4e96-8fe9-28fbea369eb7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fde62516197b4c98a428aba373a360fe10e615aaf8c5114e34dac091cb906fc
Date: Wed, 20 Jul 2022 15:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658332012
