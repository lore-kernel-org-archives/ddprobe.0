Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4127E0
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 06:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656483412;
	h=To:Subject:From:Message-Id:Date;
	bh=vzkSMgpyZIynjrbKNEnFs0CRVdR9xZQysS45Q9g3fqc=;
	b=Pi7GqOFouLXq8LVt2PJBdcmZPlc7Ae6ibPW+FdYYm08w4AOsSmRJv8pJMj//f20D
	hPpbxj7ijAK1IJxkV44bhu3jS0nM8obxDLRf9qif+Af54Fi7MBJbe07ign2fIn9RIfk
	1UVCbuExzbM1+Z7Isnq+yHMt6HDlnkAOoTIxtQmE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656483412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vzkSMgpyZIynjrbKNEnFs0CRVdR9xZQysS45Q9g3fqc=;
	b=AhOItBaksrW8JZxQgL0bfh8MRRuBgE83YIlyn0Fp6ljvHj3kAex+RiwkSwrEV7ey
	01UVkAcV67LHI40BYLmXIt1MYci8+h1qAiqCqBkeOKT9DlIoKQCK8jGQM6K/Cy2aiVH
	8TMnXmGxl1I5k6pI3vtkbrbYsow6XaO1v5dwI9gA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ae1af92b-0522855e-df09-4897-be96-794bd4ffe93a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69d9ba170cd001b9ec11ec68639129672565477154b01e6eb3773e0c92c10c8a
Date: Wed, 29 Jun 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656483412
