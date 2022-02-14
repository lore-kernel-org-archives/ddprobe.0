Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6067A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 15:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644852660;
	h=To:Subject:From:Message-Id:Date;
	bh=Ue/2fkVOBMlgzODouLD+VzMTestcRGR5uRi18zLbPqU=;
	b=ePeCkRv/Jp3itaBMBH3CfXVy1cs2Awn6oOLJR6bGAKMsXeHSvHyd2P8UZrWKiveU
	sAigLLetDSi2BLz7kIC3EnMNbiMBYdrY/gBLM+grqsX4yQUzextPlqfmDZePRfkk1Mm
	Sb7VwiefsvUANb3aNlfikKDBuAg8kC6OIFXetO70=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644852660;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ue/2fkVOBMlgzODouLD+VzMTestcRGR5uRi18zLbPqU=;
	b=JtSpuxc6lTWR7cuC5gJrSGh9M0ko0Sd3yQubo5WCJNcGjRPlWrag2TaW1H66F3Xx
	dyEjAIasiwaLX1swmTZbO5q5qqMEtikTJWhNN51iZSGC5LM269XVhv5/Rni5FRHrAWN
	3ZfpqICs70w6J9l9j4wmk0qqAE48Mk6Dk3TxNrmA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef8dbc66f-ca8b1137-46a0-4100-b099-1eaec2cf9525-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73a12f4e25dd9d717bf03c48c2d8b4503a5cd48b38b86bcc41410591b7728096
Date: Mon, 14 Feb 2022 15:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644852659
