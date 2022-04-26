Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD29B7B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 11:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650972959;
	h=To:Subject:From:Message-Id:Date;
	bh=u7514wmpTnwhQXrwPMRopB5xZrmaPbKIwbQGn5+RTRU=;
	b=fTrWCRBAH9g2DT1NARWKRqNhQC+IaaeY3i3ddzuvapikllJ5EpGhvUYwJwvmbS9e
	Zgi0k2ylODg4wGvf85iAeP/JAgnGg0u4XIUA2ytyWfzG7/mvV9m1371FuHbBai6W051
	jtTPWhA2KriByySJsIZ7KwAFTXnECBQsCqWDzV/8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650972959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u7514wmpTnwhQXrwPMRopB5xZrmaPbKIwbQGn5+RTRU=;
	b=BbEBXAEKhw0WMjez+ut3qz66pm+sutG4CbwsKaVXM8IY1rNT2ekw+e36wtNJa11P
	d9lwFcdDnrjkGInbRpKxBFlegpWLBGktbjW0GsUK8m48TH433SnDqjXSUswLJpPmJHY
	la9JxF4vItLti8+BJAhPgDtZimkOpf/z7E7MMlec=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018065a81e1e-b44d814a-c0e6-496e-ada7-16ba3f243127-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f29e32a3e8e042d6432879187e402c86016eef5b10893e559897edd8fbc6944
Date: Tue, 26 Apr 2022 11:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650972958
