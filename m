Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2183F7A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 15:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657984612;
	h=To:Subject:From:Message-Id:Date;
	bh=4+sebu2qt1vHWPwofvUTXZRua32o2zC1lKByKDCF6lA=;
	b=YNEUeJuDDyr/0iBT0uMKmasR6mrqb6YtqgHGW8gKRarlyIUj8E2771O3JqMWdhpJ
	dWgNR4r91pqcBIpiiqonz/aP19k7J9ls6Kl8IkzT3uFymwDEc0Q5G5KC32iVJor/Odi
	iOzcsELqqH40hrvHHqPiNkWwuYUTU/PfhtOp48k0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657984612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4+sebu2qt1vHWPwofvUTXZRua32o2zC1lKByKDCF6lA=;
	b=igzf96+0s+SyuM+FOfE8aSYAPoUamygRvSzIjkB1rR9f1WtZLAqHIen3lZSWo6Gr
	5sVwecjVSSXoqq1b/l11hZ1hR8u/eorKJYyxW/EPJHIpBLrPi2IEd9K+QAsrnQ7zcN3
	uLMWXlrD8N8Vh7lDOGZwhfQRRvttOK56za4BjMp8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018207957810-2f3c2d50-5993-494e-bb74-6939dc523b8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61423d1d44c908f557675b8243d0001eba60ed2dec9b61910c3d7f0744b77adf
Date: Sat, 16 Jul 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657984612
