Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49F02F34
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 20:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653855359;
	h=To:Subject:From:Message-Id:Date;
	bh=qxfaas+jwFEN8qW3lsBf+DghI9WNVMHp4c5O/QDCIPA=;
	b=GzMew60Y0sXFzG9/6eMwNT3JtPTdpUzSOnJex5sjR+pu54sfN3rtHAnC4N8W/xGC
	hC/nRsfMNZlqvtdupsrDxuZd0Yk7Pav9UhXBmtfj89qzq7DwX648Fk/qb/8rNu2BKnO
	7l2+DNFNH59dufzsGCu1jtx8bTHSysVo5+TWT170=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653855359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qxfaas+jwFEN8qW3lsBf+DghI9WNVMHp4c5O/QDCIPA=;
	b=P0Mp5/0Bh8lzI6CkyXx9FoN9LT3XWG3EX7ZkNoBBH/yyJ67g0f0Q/i3LC0hFCDOz
	VxFTSjvdyaEwN/BOxrRvA+YezbpNfe852E4vT+wLGn1sMQx/bG6tGV8zbCvg5SK8GYA
	OorOVgFuvKOvqwNnWEKIkN2W3wCpwioxHW3timDg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181117610eb-798c4a91-4d73-48ba-b0a9-2f2e9523731d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fedbddc6a62dd62b1f562e6a7687ecbc4096a0d8f5dd4159abe80d5a09851c8
Date: Sun, 29 May 2022 20:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653855359
