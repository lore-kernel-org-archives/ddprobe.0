Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E78828E9
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 14:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652193359;
	h=To:Subject:From:Message-Id:Date;
	bh=R3q5ENAUlMvinEysuvN11Op+HaSOxGQ+fQ/icPxRcek=;
	b=L3P5dHVgYIBnY2Y7HWqdNgXkfmKJtPS0DlNWesn4ruBlINDoAY3rSGrVB8pscbh4
	FcMrJZuHH0peaqb9M/eECq/+aEwGbGvZ9JglUU+vMPxKgyseTURVk+TUbogFQGeUqSi
	cPqM5k409rkwZ4C6jAKL7xBPWYs+bjNwSZZyT7S0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652193359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R3q5ENAUlMvinEysuvN11Op+HaSOxGQ+fQ/icPxRcek=;
	b=MroITgVAcVu9rH5ErMChmgNe7ZfQE86zVhWJ18jPHWRFJQabUoKqPGagfo1LaOPU
	c1iRp2brZzpNuiuyFhzSRHZ+QyFs+dzVxEjbDYhmHMbiOpkRMqD344kzAr+4RFp61tq
	7TSAgHrrfwKv1mk2GU8og2O3DRI3WdUG6jqyDhY0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ae65f5e1-25b84ae6-78ca-40f2-afed-b9bc5c1466aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a55111ff4a615f63be6cf14e37fd29e4ec9c1b1fb97628b9b712246221e24a7b
Date: Tue, 10 May 2022 14:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652193359
