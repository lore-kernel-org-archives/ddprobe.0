Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BCC7A
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 14:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649946898;
	h=To:Subject:From:Message-Id:Date;
	bh=WiVSMkpoJceE74xPr6Gtg0br/qS06zsCH38JKl229hY=;
	b=B0DrAVQHKWnsfxosAMx+B8IJuEg7H+DDUAL2CxHQUK51xD+7YQVZfb1/BPC2XShM
	C8AhZZX/06p1vcowDfqdhEYbAfPfj0uOLvhzOqQXpPKh19cDjHGsCbSrQq7Lm2P+f2v
	9YohccFYgMGPUvVJ4jeCaviciaawYIjzszyk4jzM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649946898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WiVSMkpoJceE74xPr6Gtg0br/qS06zsCH38JKl229hY=;
	b=FBDLSa0i5SdqD0k4U3dkL1cqI5NpDLRzSPQHW+6hR57TNJ08Ec/VNQBbeeNIfLeM
	hVMxNo2INzP2P7p5wK9N8iGWoXEixYpKjUw+mWAHp/Xvaxt8o4Y7mGZKdXtxm2PSTE8
	N48Op69JZzj1CLWAe/mPeTCTU4oUIQTPvMgZLcmg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180287faf52-68b330ce-2a30-44a1-b09c-681bd095dbcc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec0b0505b2d695e727e80979642dbfdac8f99b72ed5abd7a94b6ed1e3b278d28
Date: Thu, 14 Apr 2022 14:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649946898
