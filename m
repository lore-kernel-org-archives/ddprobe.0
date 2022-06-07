Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107DB7F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 18:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654626179;
	h=To:Subject:From:Message-Id:Date;
	bh=mCliF3YXYZ5omsD9uMIhuskNB/0Iy5UgtXYmVTEq0ak=;
	b=LRRZSOmrWk4yp6yyGcCTX9oNltiR4/T3r0+M/+OGFTUBAq1dL3lBUW+XaOGFRioc
	McO7kPz3HshrYz2qLkhX7VsOQ4vbieoZ5aMrnOkUyJiK10OtUK0mQSr59kme70zBZpW
	zWMJDVLhwZ4cWhHbO3edFuzYLc41DBCzWSD8uJo8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654626179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mCliF3YXYZ5omsD9uMIhuskNB/0Iy5UgtXYmVTEq0ak=;
	b=gPed0W7/RkVdTK7SKcYVTrS4OLhuSHJl+N8Ascq0uRadgxyv36oqpBeOVV5ahqQx
	ANrGPVSp80vNhSzpmh0KwXvcPF+59Se85KxJ3sQ4VTM7JG6CwR1kcpwIfIVP7RSDFtA
	AiZJkGxfJjrgrJN8O/gvGSkNpTAfEDo6Hwr55SAU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813f67d91b-4d187042-fd92-4398-9e33-e2fc8e3e93ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c61c339c479c447857360c08e5aa6e054925ee45fb028016242a012678a9137f
Date: Tue, 7 Jun 2022 18:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654626179
