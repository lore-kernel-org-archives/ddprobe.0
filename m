Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B9BEA6
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 10:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658140012;
	h=To:Subject:From:Message-Id:Date;
	bh=IS8zs3Qlq6bSpne5EhcpU3zJJsx9XiJr7z1juVJ789E=;
	b=jdmoIxb10+OHBdkHqK7gWqQrfSTuSQYU9Q20NJ1DhTjLUopkk8xPz5mPe8pTkhQt
	2tM//QxBMel5Vg6DQKuPrkSnsOAfOeLtgQ5Olp3afsPTwrTfSAlXml/68lqBsF3liH9
	GJnWe44m/+yksGoit26pr70mbt6B+fyuMPI4B+M8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658140012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IS8zs3Qlq6bSpne5EhcpU3zJJsx9XiJr7z1juVJ789E=;
	b=IczT354te+8v761O2CDFjs9ic4Qd7VkkvKwXMEczj93iRoSX4MAoiFrZHtcfKDbs
	554xmPIlxWONlcGk1qhROAXsnpEChVmpUCq8Qjqn8zm8Y/tPj9rxCnvKYCCZJhR8tEq
	TlKXNLL8m05RN7ONiWI+e63lRXAcdqSSO0T92TGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018210d8af07-60bdcced-8bfb-466a-90ea-0aad49a57e68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2a30697170c701982f9376d43f95a24e6af9002f52a9e8a8a248d32d120e992
Date: Mon, 18 Jul 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658140012
