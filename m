Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F5315B9
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 07:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652255399;
	h=To:Subject:From:Message-Id:Date;
	bh=p9KfLnLXq/vv7TpnsmCNHcaqkYNWqImtviBCzYdAaq8=;
	b=SZS9yD3NPmsLAHY3jwrZq2WNDQ7htgBYcdQpfRN3JLhAA/Hq+ER0SRhPI2/Ei41V
	2Wno1/4beEhRv8ubwqnPm9KpTBFEugVRKWBI9FY7Iz0F1P7V24IAEWhMztWY07P0uX8
	VUuDJkxzo3WtFsptwNGeNHr7ikJSUiqrxQ2AsvqI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652255399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p9KfLnLXq/vv7TpnsmCNHcaqkYNWqImtviBCzYdAaq8=;
	b=j2cpa5P3kg3piefccThfo5j3GbSXLds0qZWUSA9KRfI3F1XZtqz4ZpAR+mOh/2kk
	I6IapG66CVL/eC1XILOuQn9aykF3JiyRIUCU04afl6NTXt3fsHR2JzHNKPIY6FN06Nm
	s6DQboYbqOIBgENktRFkqA7dMtjen2kNCELQP7gI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b2189d7f-66498d8c-fb4c-4c1f-886c-e98c2fe927ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4f707fffbdd9f2c9e847bbac66c312b8a495cd8dc03f89f2a8cc715a5debb8c
Date: Wed, 11 May 2022 07:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652255399
