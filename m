Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DC7C7C
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 06:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653632219;
	h=To:Subject:From:Message-Id:Date;
	bh=AIrT4VMFetVlMTFI+geHdU5CnkbGE9DbddvRZN3SnYk=;
	b=CpIR/HCyWvxGYrUS2ExhROFcglgv2xouLi18DYZw2NFoyf+J3XfmkBrzT/c/Zy9S
	K8e3FscOtEF/YSw1urMbkRq94ZISZ+PckG2IN8vlM14YtWSuE0c+Bk+jK21QUDPALlL
	MO2Me+VMfAWdngMqq6sc3SMb2DcJxLsCppH2zqC8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653632219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AIrT4VMFetVlMTFI+geHdU5CnkbGE9DbddvRZN3SnYk=;
	b=ZmIHAgTuLYjsFmg1o6qIDEta6VDbm/6jV+8MWoJTVI6MGtqCfNoDAjVhHVSt31rf
	evwzMJgTJL1svriz3RlVc1sH9Zz/VAMP2yCchz9nHgzOMk6m1J2IGLUoLuyB0DNhRS9
	SHNq2bz3JtDfb5d4t8Et6yvijP8oBJiJPmf2htTo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018104293911-34d499df-ab58-4b62-b385-99569ef2bd85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36c7f2cd659cd2ccd5231235fa5d56a17c96b4218d2e5713018833808ecc29ff
Date: Fri, 27 May 2022 06:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653632219
