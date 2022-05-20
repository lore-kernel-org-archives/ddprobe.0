Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1177D7A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 14:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653055559;
	h=To:Subject:From:Message-Id:Date;
	bh=M9E5O4VXPo/w4oTE8e/SJPdtLyHy718LhI4canCIlhY=;
	b=dL+BLYUKFSAG/0Wjuyp4nhTgCh9K3OSo7btyHEjqKb0GyOr98tPT1D+m2SnD4bYd
	cOZ4hbfFcuHA3Psw5A276r3ISOi3ixAQidn9LFW46tl0Pn+qyAnv+clqb3Z6/aswaXk
	6COcJFDSEWSmqIlHSaDrjY4unQGUNYdlFbReW+y0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653055559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M9E5O4VXPo/w4oTE8e/SJPdtLyHy718LhI4canCIlhY=;
	b=ZPu3X0rYBb7MWuG4zAG7NngIz3jLTW8ZkjKeGmutY9XQ3QTP0X2AChpVDo4C2Fv1
	RkYC68cudfalPLa2yBsg+wfHe1Z69L9UDC7AY9mpLfqcaVfguJPuJLlLuST8i7/HztL
	IrgEE6IX26YneG9ljHjQ1JC8dgLwIphxE7ff45qk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e1ca16a4-64398bdf-3419-4631-9597-9adc3d1203c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 424439fc220552937c4587fc437922435a135c841ac160feb2c7eb33bf00dd39
Date: Fri, 20 May 2022 14:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653055559
