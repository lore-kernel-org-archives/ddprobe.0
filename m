Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E32B8185D
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 13:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653659999;
	h=To:Subject:From:Message-Id:Date;
	bh=PqoD1I5QAXTbZKWD82wPWt+ozPYiRfRxpeUdoAdGkPo=;
	b=iHo8W1KZKX6iwRIFQDwqyacQKVuJdXpj2RDOeVO13oF4zbqigLhNNYfyUbIO9qM3
	N9QIpSTF1Zd9nwntfxaralx0CGY3Gjuh3QuYGgAWNkNL+VBh3EVcSsq95qMUkfzYfta
	yl1ktL6Y8Iw8i3++s4v6vzOkr2UAOL9LqUsRI5QU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653659999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PqoD1I5QAXTbZKWD82wPWt+ozPYiRfRxpeUdoAdGkPo=;
	b=AR+66zZLFW1y8ilNPVOTE2mawvQXg1dGYpR5wDNVMH9sgJAo4IPqfdvlOYLvoaTS
	pgH9ZnFhlqzF9R4+OKrJeVB24tuWN8XvlDXaUtTOdsicMcap4+ZHOCypDt6QkZMvEV2
	6KCawiT1tJrZotYT3lssGlCUGA2OvCdr1C0aZBGY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018105d11c1a-e78d796e-c17e-4cc4-a236-3ca57e60a959-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7abaccce1db2ccba9dbc33a1ae52e43ec0618600712b0434e66230724fdbf5f4
Date: Fri, 27 May 2022 13:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653659999
