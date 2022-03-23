Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622A27A
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 01:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647997884;
	h=To:Subject:From:Message-Id:Date;
	bh=pqfr+aazGCn28nE+KacdJO0Qq2zCfQDFx2+DHBYJWu0=;
	b=j3O6LMQlWXevqNcAGK/hmWkL6eof6VidPLMBj7AvtcK3TLNeoHZztB312k+xrgCa
	ZdpEdQqUcHjFdLoKgHqB1ZkhrdIMjJRQty3gM6CSdsWSgvytyOL44+mfyh62So8Eh64
	OMDW9b9R/KF1STx53oXPZ1PRWCC6Bn0MBG4RRiC8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647997884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pqfr+aazGCn28nE+KacdJO0Qq2zCfQDFx2+DHBYJWu0=;
	b=d4hmPEIGkSSF9oE4K2jOJbRUCbz7tqmd+c4TgPXeu+Qzjh+vnIc/i562uv8f8dTd
	J55HpzJS09mSLGWTjGOqIh0yUKwWnYVdwyrw+H0XEsf9N2shH1sa5DH3aPoufjzuVtv
	Yg2eGyXyXIxyw+ubyWS8YseySrnwOxTrvLVTVmm4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb454193a-33beaaf2-43bc-4717-977e-91c0ace17514-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ecb33cc27b1b22276a817a3f48788f1cb0683cb33a98f484367103924d2d7b5
Date: Wed, 23 Mar 2022 01:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647997884
