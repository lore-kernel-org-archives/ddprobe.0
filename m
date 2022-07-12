Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A0323A0
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 01:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657590412;
	h=To:Subject:From:Message-Id:Date;
	bh=gl8r+58OrzMabJ5c0HsGaSCwN3dTIT4DcumG6IagSQc=;
	b=WHLyumb4LIgHTgQBjZ/wxDnCdO6/XLSqczv1GEIuXq0W4Zj90q1khXPxX3KzKvrU
	5ZZubAf68HPDv9PV1EFt5hbioNdZ3iYwh0nPS0RFDrnX+JvLV2pMsWOb0QBLRi3fcz9
	kHl9iD9t8ght+I0hbgvL0XoSQbRHYVOcSLXRPaGw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657590412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gl8r+58OrzMabJ5c0HsGaSCwN3dTIT4DcumG6IagSQc=;
	b=Z5g3RZZdoHL7k8fUQXS6f/v5fbkX2nsqg6HIkarlQi1gGD13I1Q9vJmZ3yyRtfGV
	ttsgqrExeKk3Dy9cre6p31JYTkCA09QxUMcR7q7muzJMStUnI6ybz5FsdcTaDA83aiF
	Tmjdxgjc8o4gzCnCYA3XbyYcWPz6CvXJp9Uq/1JQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f016741e-e913dcfc-b71d-49b5-acf2-3cccf7a2fe69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c17119097cc1dbe3c038d6cafc2f65e20e1a1a4ee6a83c43c997569b2d87610
Date: Tue, 12 Jul 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657590412
