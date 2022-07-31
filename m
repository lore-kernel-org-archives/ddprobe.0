Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602B515A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659244852;
	h=To:Subject:From:Message-Id:Date;
	bh=PNnvYFDv1RIkkAIoQ5rB1obZnBPJmaP5UHO1i1Ghkn0=;
	b=RJd2a2huZcuI4cTnvLk3v4FeJYeR+p2ZEY13t5fCofkKPl+UljTMJTZtWkzkRMJs
	GenU1/7bGhjGvVvVPfXcNosss7RvwoJstuPFPdrSRddiqzGMlF9fUyRucIkuJSupNEQ
	fN3Q8jxU72BM4VCip/JXFM6ajvH3ETSHq7IOIxCE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659244852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PNnvYFDv1RIkkAIoQ5rB1obZnBPJmaP5UHO1i1Ghkn0=;
	b=R9ft2JkwtApP7w6cjRJk8k6Ay6FntKRnjxfhybdVH0Zy6B9kAmw0rKnzhMze5Y31
	RZ6v1lziVF9W9H2OAzjMiyCJSl0695QWX1n4gEU5otzARG7ndyFQw9P2ghjJWwlQLjc
	KHKtuSvHWxZBHWA8XbyF0IDS2L++kgYRRcQmmnEo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018252b33582-72b3ffc2-42ec-414d-8154-cd9b45995f1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 877e9cbe09815adc07c7f4a93c35ebe6eb9ff9c1f8ce999505498090ee8a6045
Date: Sun, 31 Jul 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659244852
