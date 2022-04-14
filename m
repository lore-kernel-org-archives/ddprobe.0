Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135E715A5
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 08:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649924218;
	h=To:Subject:From:Message-Id:Date;
	bh=co4rVOQvGrHpbDzheWqIp2TRPaIenzJGko3XXJOrCBA=;
	b=hlnkPSQmjoOCMHj+8LYhKRDmjENikch7X2yUtdbl8p14kFhZVwRTrSLu4jIQ3L91
	gmU/A35TR/hi1DiUd7rSN7Ft9hy9AnNuy7MJS9CiP4GG3MlTwQSNQQl4Zomq6HEgd1K
	XQWn9EVp1njD/+q1kHYZs6UorJvMtKJFxFBVZd80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649924218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=co4rVOQvGrHpbDzheWqIp2TRPaIenzJGko3XXJOrCBA=;
	b=jDx9ZHmma2SykSEq/dia6QEaas+Pq++GYRcX7fLd0rt9DkXZSne8yhCMbq9nSUXM
	gLMQ5S0ziAqOaRZjK7lCwTu1COYfZw/60iaAGSIZ/PqD5eOFYufFIeAnp/j3sboVpAU
	eXXm+wDev3WvpO6q18kG/qCJWsytUzwJ8RYUKcmU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018027259d9d-eaf4f021-5aab-4f64-b81e-2c1d3c347b5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8262cc54dcd31be4b795ede5ac449a2e21d831c4c413de0ec4ba45c861ec4cc6
Date: Thu, 14 Apr 2022 08:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649924218
