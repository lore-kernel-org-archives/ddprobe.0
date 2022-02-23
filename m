Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86E5EBD
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 17:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645638385;
	h=To:Subject:From:Message-Id:Date;
	bh=ZYOVLEnHsx1a0ltW2GHkjWYTnTY7V38+IrHACQN75DU=;
	b=l3ejL+TPTAiiREOUIYx9bMXcqK8YUpSRxGl4OdI/+6Dkr5fIoaIRdJGsLOzQlPxt
	7nIBTJ8jjgcd5dFohUCwUD0gsfhN+oWMNk8Q4R955CvymeXYUduImhZDL7xfRLjt/93
	xyjL4KujbWcBmP/Gp6cY16yCwqknNYlbNtbwxgfc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645638385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZYOVLEnHsx1a0ltW2GHkjWYTnTY7V38+IrHACQN75DU=;
	b=Tt7rRs0RdSVKoToxxHvFa6959le1fZ15/brqripy5B6bGkusIlXZBpyfLBOntbRn
	4PJ+PQZV4lCsRrmsJ6TVf9BoGOYrYogI3KyDutmtPkL1X4AtciOkN8g7vuviJ64arf1
	/Zvp3qqUK4axU2GDoTNCOGr5GaxO3RfeN81H6fI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f27b0fcf5-ac580006-fc7d-4c39-9f76-46a7ecdbed9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a7a6fc025c65c9b511d8b532bdff8e007d292f32676f47608579767155f1e74
Date: Wed, 23 Feb 2022 17:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645638384
