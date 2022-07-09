Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3C57B
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 10:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657361812;
	h=To:Subject:From:Message-Id:Date;
	bh=55lV/KbN0C8E0MvpBd75IOuATOeB0GAFbUjN1IVjkO0=;
	b=ZzB8/b+wwU1Lt8qwSxntbIK3MCI2X5IcBp3zxT+VC64o3ttrbiv0j7GcGL9ihCKx
	xtiSIh+0uGObio11XcBux1K6ZYzhpwhw4q2xoQ/JUinTypavBC0rHv0Dc6QUFT+8xuX
	NiBlRO2ozNgcuy/oC3833m/PSam0vinG6JLMZd84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657361812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=55lV/KbN0C8E0MvpBd75IOuATOeB0GAFbUjN1IVjkO0=;
	b=ARRrKzjC7cylGdTwRbAX6iiIH26+QDoFBxsqaNohKltPtLvHDsqXEVXcE6fNSMMe
	wPqq2Z2R6NQ6mt5qg8d4C4MIqkfbQ+Mv4R/VFe5dOkX5iG4kEJYcENSD8O6RO8WkgIg
	iBNqp/GCyemF3PCPxx4gh//UQvDlWX5cREmDU3NU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e2764bf8-a3f42c0b-d8df-4edc-bbff-0c6f1285bda7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c39d5958a6b59bd5bdcfff484ec013fd36f538132c7851f34a42c65baa17a12
Date: Sat, 9 Jul 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657361812
