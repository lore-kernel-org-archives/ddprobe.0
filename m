Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273927F
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 08:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652863679;
	h=To:Subject:From:Message-Id:Date;
	bh=Gm9yQC5vYA3XmAV4N8ZIL6zrl5yPpPOPfphy6Jb5LVo=;
	b=jBQVhtRl9AuL9I2gDU96kujh1qqYY2h29CnuABo/Y0wuD4yqRz375kYGPNvJAFeX
	KDwcLHHtgpt473VfWZIL6NjC98YHhEtPry3WKYpK9Me7qauZgBzbc0wujRzb79bZOVO
	jmqPQDgxlG4VvJe1yRFYMClKb5F3T08v5NSzqHBc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652863679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gm9yQC5vYA3XmAV4N8ZIL6zrl5yPpPOPfphy6Jb5LVo=;
	b=P+hlBLEadUY6BIcRCm52IYuQY9ug3hpHlVcPvvh1pwp4EIWoiuhh17Rb8FGTkd5f
	zXztwT1cCvCRJAJw85fB1gdjXDNXd4U/3VRqMlAJfnnqv9ELHXga2x/YMl6l3CvSqpg
	va9xadtkry30N8N3KAAyXfHoddinlg3groGf2Mz8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d65a3b29-c5083649-ae3b-48c7-bbce-acf94c980cc1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3bf67bc7c8a659667952897e1e958f08c88154fdc8a1c411df00e1f85b11421b
Date: Wed, 18 May 2022 08:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652863679
