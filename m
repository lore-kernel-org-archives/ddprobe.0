Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9967D3FE6
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 18:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647799584;
	h=To:Subject:From:Message-Id:Date;
	bh=6K4CQZkF9KUfnX5jfnNXTPdDAjrIomSYFg/52t4cDfA=;
	b=LTYdcyOzl9zOz95dbo93wRGVrIt72Vf6owP9pQo/XUZucTRGf1lmHmOKBQlsm4+q
	S69cp8OaIKkMUoS4D9NDOQkfS2SLl/JdCQ0auQLuXb4Vt8rzPN42wyErQzbZ36foV/S
	XGNgv43C1eFEJCE1tAj4G+kmnoefP/Ckm/+dERuY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647799584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6K4CQZkF9KUfnX5jfnNXTPdDAjrIomSYFg/52t4cDfA=;
	b=UVo7p4xGg7cEIbtyfFtf8vt+gRKQJt3fOqAtZdZP1r1ied2pYDGeMSs0ywLpzq9D
	D93Ud4Wn4lpSGAE0dtJT6QspnP5oJOr0hFjMS7fKgNkps6G/pQlOn2/6diy7tHEu5IT
	+G9rRxJQNdcF3+DPtfKdLrVc20e87e3YiC1C0psk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa88247cd-e8276ba3-6427-4734-97c3-183a614831cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ee265c3e2f5702b4d75530cb1feacdbb0766ef676698c5bf1097c96aad697a3
Date: Sun, 20 Mar 2022 18:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647799584
