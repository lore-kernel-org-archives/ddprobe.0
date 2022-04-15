Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F01A7B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 17:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650043738;
	h=To:Subject:From:Message-Id:Date;
	bh=AEGcv+RqP8/wPT7IcCOOndMGg7tPWyzeAZ8avTWPZsk=;
	b=PHGdG6ZfVtSjPinNw0z1lZRSWK/uQbiOPbUl/MDWgxg2kvC8M3aeQ7IZHKWfFC/p
	X/SeC7r1MPGM2M9pvHphNsh+GfeNzsZvlEUNYZkI93CCog2ZCVXksMQ/lyDLCBAL1Xs
	QIF6Hdx8yjMaU04ReKGReXiV+AHDIWlbpHoGz1T8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650043738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AEGcv+RqP8/wPT7IcCOOndMGg7tPWyzeAZ8avTWPZsk=;
	b=MHnszSLis9MV/978DcE9sw8frVUu6u1Ig86+sDL4UskOxqtxIDv7StHsf2j/5WoT
	T0KB0j8gDH7ma+Zf7N+DPaNa2kqbo4b0O9ulHF1O61DlxVQg8wPxhL1EiLrL1JPv26/
	/yQhs5SgtVhjGqxhKMi3GvLMRZxm8hEi9i3bXQV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802e45589f-c38ee434-451a-4125-8707-eecf9ba86518-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f90a058be4c0165b828d3e2d8cb1e8abcb902d1915b6bf57ceb7d3b94820c03a
Date: Fri, 15 Apr 2022 17:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650043738
