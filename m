Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E036371
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 11:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645528884;
	h=To:Subject:From:Message-Id:Date;
	bh=IACLnuZl6sWEiLz2cyFIMOhwm55tRwTdy8LgJUPfS5Q=;
	b=XqlWx0UKca0oiC+ljSQPNSteJQ2NAhZwzbRe2rlh9+jEl54M/t+flL4uPFPPEFF/
	EoCALwXobGsnu/5YvBu8/3DDRk6BWKTotpzCho5pKDr8TGgulqoYvcqXFiqRkjnFYyu
	g4F8PfhxbYQEmqmOPy9pG3daFbHelHGbEiDTEseY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645528884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IACLnuZl6sWEiLz2cyFIMOhwm55tRwTdy8LgJUPfS5Q=;
	b=J0V0AadcvTb34FK/Yv0xUp2jVxS7CjguMbvsunA7iyLorWyhg0yGG0UfE7q4fn74
	p9Vl3pV2qkqiDOHQlgDGLFfVtpB7FrgD4odxaNEO2Tt6xepdwvuRQug/+qLGjJ8bhYT
	Uc309L3AICrKLfOcLIXXwEUmA2Oip+NzSPAzj2Yw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f212a25ff-079c4aa8-f9a9-49db-b354-8ffc5a0cf4d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97cbd4552c2061aef6b74502150e567bc0a34a9034452013f0493ea68e290eb4
Date: Tue, 22 Feb 2022 11:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645528884
