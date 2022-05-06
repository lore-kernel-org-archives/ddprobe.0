Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DC462A
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 16:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651855078;
	h=To:Subject:From:Message-Id:Date;
	bh=1KYwA7y/0hTXCQBdJ/lWJlfqyz7jAIFrjckr9VkEUJU=;
	b=GGlIDKnDb2KxsQzaPtNxbgzDnhbOwDLlH/ZdktwSDrqh1jLIb3pQo1UaoCZNsJvf
	hEP21Rcbz80LRN1qr0cDR4Do3GRRjzgVXSl9yhWI/JRN/5I4maXlDXZmm3YalPyQSmG
	Z6rOQtSqSGCCghmqfY4QkVf6Fun9tK27DWA49Wfk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651855078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1KYwA7y/0hTXCQBdJ/lWJlfqyz7jAIFrjckr9VkEUJU=;
	b=E+Xc92Ae5Ofi95WoXGuYnTmx24BpBOIsfatkAJrSKjw3YVEO7VZ/V2NaO8wp3iuq
	m1iUNPJLQRhz1FJI7qRIfrOlIOZx9Lb1mnTr4yag/R3oYz/k6f0JuQwg3zSkbnrQs/v
	GJ7k9S23hRNANBz1bxSjOM1hmzGOAmDcup98OSaA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809a3c33cf-a6bbb073-7beb-4b39-8c65-86660e82c05f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9528064cc06bca7dce701e3338458cd037dc3f69bd21af317a451dd748d115fc
Date: Fri, 6 May 2022 16:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651855078
