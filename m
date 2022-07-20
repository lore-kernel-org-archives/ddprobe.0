Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6B57B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658343412;
	h=To:Subject:From:Message-Id:Date;
	bh=D5FqfmUacLwkHGJLYFwO2fIyix1JybETFeeB4slqoFA=;
	b=ZzlbkuYVgg8Qo2zcxSLaFbEIFbXV/8eyWnDqu6a2MD674v+fGkNzRNKNZ+u9DPzB
	IB5Ig35I70nTRLJBvxm5BoCWG9VoD/nLINXwdROWljls2t27tk4YkV3j3uw/mnPFHSv
	wZQQAMSiVV29Ke3Vk4AhqGZPP5mMrAjytwdp4wrs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658343412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D5FqfmUacLwkHGJLYFwO2fIyix1JybETFeeB4slqoFA=;
	b=VzfqFjw5JZSIxtfknt9D/Qn0K5uuyA6HAYs/R3CLqGENlyiYX7ypt0mrsdvJEv35
	YrPO/TIK2fqll15rvv8uNrSopDJYTE0obPkJiu5lBff6lac94UN0yu6xLEWPYbMSqB5
	f4c3RAp8fvZDrdmNGCl7MaIDKgNc4fnWJG8S/DPM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821cf8520e-24b8e99e-0cc6-42ff-9d04-d4c61b837784-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d01bcecf73c2f4fc20f29b2c9538007912e1a0e5cfb09be6903fdf0b9e8d9ec1
Date: Wed, 20 Jul 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658343412
