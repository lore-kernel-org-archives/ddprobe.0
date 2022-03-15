Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572F71B75
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 07:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647330084;
	h=To:Subject:From:Message-Id:Date;
	bh=06nI+iDcrGRgvegDg4bEQA2ilEqaqcw6jCCX944VFdk=;
	b=kmKS21E0NYybB/XoOc36ew18MlemXiywtmWWegcecLm6oYNlJnGfdPVqCarfiecS
	CpsLP+1y0vkG4s94SHroFtF4JpimdyHMzeO/9Yxr8yq97/IGjX3FYyXLK4jp052RqM8
	P2LzoRug7RDm3HIz2K1R2xMd6Jb6uQbw9HMnv8QA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647330084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=06nI+iDcrGRgvegDg4bEQA2ilEqaqcw6jCCX944VFdk=;
	b=jdJq31L/xuPn/Yfiy24RiCEEkG5Yyrmp0/qHAl0XZz/YOvj/jCS+75il2MqepvaO
	FYpKmsn2QqEADi4/mV/ajGW0dlooRJHbsxcaN/3VGHNb0PPz8AN1HWdCS5yiuIsYBv1
	1Z/6wcjHqjXiVlQFH9Nxy9Jm60+WFK1aPJri1Vq4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8c86478d-fc9a2c2a-4b0f-4b1e-a8f0-cd14e4e83b3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e62298443b73fb77db0f4ad2611939ee5a4af611ced27ece92e2173d724e915a
Date: Tue, 15 Mar 2022 07:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647330084
