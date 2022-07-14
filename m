Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243323206
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 11:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657798012;
	h=To:Subject:From:Message-Id:Date;
	bh=N1gyyDAs4SFnPf5u3QrMCmF72S3IrLElCczMtBINXgc=;
	b=GKUBb4RfFul6o5tgwIt8bRctYgEQJJt6z+DHU7d154j+uXf8Hp8UfzCC1VSryhxj
	MQonyEtZeuz/E6j347/DE4RduWT48tGdhTbzH/E8ghNWypeerHgA9KilpvdDc8IyVev
	8/9zaqomeNscOdbSXsu3mqFLr0W+VR0QIXObw+W8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657798012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N1gyyDAs4SFnPf5u3QrMCmF72S3IrLElCczMtBINXgc=;
	b=Bt5qr3fMRB71WhOCUMJyX7xx26OJgjdMsLPem1+Gh/TX+5W3NQ1g+AKss1DGe+u5
	EiVE1m83kGFzB+j5Bff3RJz3K29vPZRYyRT7LGvNs5ONRYw7VeJa6w7L3TDtn6wvfhj
	wdkm20jYljy0ljDBFX92ccf1IOdbHfhChQlV49zU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fc762d8e-a7c8d768-6105-4c06-b671-3e8ef768e692-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33ff863d2e6a66ce3e38151a60d3cc3dea9a9561daa71a56867ba9b3de3d0674
Date: Thu, 14 Jul 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657798012
