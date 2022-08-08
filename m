Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566197C
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659961852;
	h=To:Subject:From:Message-Id:Date;
	bh=LNVm7VKLzHRfHJ38tkdoIO73Sz/QdMu9LeJxOgtHrI0=;
	b=PQonWXyFtdcLmx64Wa0yYQr98dtiSIxW07SfC90Z5B4nrvAY8A9fmRHyk/dwuV6c
	N3Nq7sz9h53ehSCyV+FVvF0rC3F5LpiFjMhAtOQf/UKd4bFGA9O67pAYLoUeDIFVNMO
	FeKyy/gkuG1JoPQeqyVVq7k8ILaggURd78zymHzs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659961852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LNVm7VKLzHRfHJ38tkdoIO73Sz/QdMu9LeJxOgtHrI0=;
	b=ecmr1AMxQA4Ea3y55yyYGb2ObIf0uxgwiAzp5TVoV8M+8yT45NhLLFHoIqkBP6QJ
	mWuFD51R+3H7ld44uX1MKesxHyeYVd79dL+/UnivZuNq7zZH2NJPmeDoEC7ZHjaYFht
	oAEUZkVezBQ6tFmvNpqGFOyUC0H9Lob2y8LldDYc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827d6fc29c-69ef11bc-680b-40f1-b952-cda6c6f5b185-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3baef77715551e4ef888f0b32bc7f2cb62ba76a3bf0eb63c6eb2c4cfbd08c207
Date: Mon, 8 Aug 2022 12:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659961852
