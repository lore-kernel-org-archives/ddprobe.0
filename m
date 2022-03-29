Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AEB257F
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 17:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648573318;
	h=To:Subject:From:Message-Id:Date;
	bh=aMlRfyoYXHoRIfk2rqr/8ykC5XfqmR7oe61+kg4Ou4U=;
	b=DWONBhb1gNUY9ZAlU9Gr2UQKpTKWhhbN7eJ7n7wtYRR+jZ5YX4u9U4BjFuf4iIGm
	cmNzLN/hzC6NSoh/CmRuT5G8dhydz1JG2dt7woqYI3odzHoUvcREFkIyNUjmcbUev5v
	a+MjKU4MTHJ3dTq82lBhzDCLQ5DjI2l5cAboCZao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648573318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aMlRfyoYXHoRIfk2rqr/8ykC5XfqmR7oe61+kg4Ou4U=;
	b=Xh+HJhSw+zynyFhj/ffXC9jezFqjgEgXFqBoWfYbN2qU9uvoSnsE0G1+nOiiNw+a
	heVPTXXph7R94+A3JKqttYfNX1KSBZy6pwpoR0mHt/IZ36l5xMclsFFi+C82j4XaPel
	Qeq9aY0s4TbX0Ub3WDzLLcPrbv48whHNLrZ+r0UM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd6a08443-c94ed083-bb87-44eb-8e56-4a64f4f7201d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d9c7e8049c86903de2245206163bf4702b8ff89cc8622c6571495b98321e328
Date: Tue, 29 Mar 2022 17:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648573318
