Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400A810E9
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 01:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648864378;
	h=To:Subject:From:Message-Id:Date;
	bh=QDz9NxfI9dkJdZHE0vKyxhOcq4sKWt/7imFM+WBpmU0=;
	b=SyCFX0hGd9toGOQDOTDrz/pSaViffHjbRxhqqFOijhJYGTEzWaUe8nnSfuzFraqA
	L4X1H4GlyF+ci6EU0M39KinVFtxlNpyLEa93yq6DcpZhtDGwN//UVJ4EizeaDa0SA3C
	r1xvWVbW0TdfrvzqpKPeWRR4xcv5Nh6okEj/gyOw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648864378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QDz9NxfI9dkJdZHE0vKyxhOcq4sKWt/7imFM+WBpmU0=;
	b=h/PNdgto1/bSYhobvnpgKhv9X0PaVHXYwOayAIb798ZzDr2PPalI1m5PX6iCOHhB
	kFXO0hNznl60MWHd2TIIdxtEL5H2+/O+WtvNGjx7v/9w+DhyUNggBShDzM9WJJ1xID6
	9YnX1eIVNSsTAz6fobvLRA55i6Av3TDAjoTE9nZ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe7f9bdf0-2e4ade43-5ecf-4312-9dbf-f2c604a3141c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b407b14938c2f7c3d310ee693ca159d9dd9a8c9e87859dbe2b0176b1b572865b
Date: Sat, 2 Apr 2022 01:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648864378
