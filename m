Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BE97F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659418852;
	h=To:Subject:From:Message-Id:Date;
	bh=hiJIm2mrVY/ESJWGbcdG4t87y0de0MutU8IWAa6YGPk=;
	b=a8GdS77Kw0D+P05aQfgewSFzqlzTYsq763rq2aDyNNk5hx/rhlG47Esa0kB3PqFV
	sggjbmGPLUPIesVHKJne6lw9Fx4yU/Wqd7DvpzHG//wAd8aqv5Du2vYU8AW3inXYHfw
	2mVW2hqpgmXUiYUZNFjNdbv69R6YaKjj9XXdiBPI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659418852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hiJIm2mrVY/ESJWGbcdG4t87y0de0MutU8IWAa6YGPk=;
	b=B7djhq05qoLuqhZ0/n5c8J+dlNHDAwq/QoV9pbzyWWtpuLcPPM+H/jhRAEuChgJW
	N7tepisx5cn7neGJoyMTlrVT0GxMb5m0LKphrVplyAg1tmhqA0PWjH4oIUtJFBslBo5
	5F6mUA1TivMf5CP797Sc7ibDwnnn/2RfU2vI+U2E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825d123cda-2360c46e-ad3c-4a95-924f-01cceba45d88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 309deb215ad14a6ab93a1d07af13d88304fa8ab812b1f471e75475c16780f528
Date: Tue, 2 Aug 2022 05:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659418852
