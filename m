Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 007407A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 10:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655287799;
	h=To:Subject:From:Message-Id:Date;
	bh=HT1IuVez0bEUrHZ/kelz8K6JjPble3+LOaSg9cm/i30=;
	b=BdPqQdFhEG5R19IqP/Y1m6NKmZHil+FxLm3HI06btNDxTNi+WHwLFfZRdt/di41B
	pmkbKOUcQjNF2LMw7jwz/823NdaoOJ50mcS6CFhOe31mAaSdt3IWa901yaym5P7NyVR
	sGghWP9TblvsdPiQ+1tfkIFQpunPAm3ZfAJw6ppg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655287799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HT1IuVez0bEUrHZ/kelz8K6JjPble3+LOaSg9cm/i30=;
	b=IQ/WkQvU7JBG9t6AYIXmdYWz9QxMxHYa7Gg3yezrL4bfekCBXT11d2y45m9wpFTo
	tj7nNRTTARXcAYt5GSahzu+l+vdcDaZdcn22Sm6MQhen1KarScyyi/iQL6fP8M/fP5T
	bCGmRonqayQ4Xi2Ov6fMf3etKSQo+IJ1xrOOD+uk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018166d75de9-bf1b8b3e-0f4b-4214-9a0f-13f7184e606f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e806716c31b7ac85141f35ab9f0b2adb5dddd2995b7fbf414f4fcfa788f20a86
Date: Wed, 15 Jun 2022 10:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655287799
