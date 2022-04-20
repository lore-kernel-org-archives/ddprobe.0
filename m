Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A6931867
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 17:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650475378;
	h=To:Subject:From:Message-Id:Date;
	bh=ELiIkkHOJZTi1Rk+coGy5pvcXnNzijFH8W/K+UzoYis=;
	b=ahy11ZXQ7yASZ2sNsh+y5UFx5gkt2UCAqdqgSDEcf12tF2HkyqJet/tB5uB0pvJK
	1+kAvhkV+ZNQmZ8OwDB1SP6Ikpz1MubpuwYBouXTLQE3zuvrNk7AonHUkhudc8ixZKo
	SwHWGMAMpzQDAWYPoZyYWL2EAGRjzY9bvp8VAgw4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650475378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ELiIkkHOJZTi1Rk+coGy5pvcXnNzijFH8W/K+UzoYis=;
	b=D3gBLHjxqj/o9AUW0XWUfBHjny/+KUR/mf2vx8jfczQnfXVBgXdAzcWsf8G+o+S3
	PlmVd3JlGNPlrtkR27BZ2Dmg567N+jUl/UFUfAIlZx4Y5YAJGE3CAS3wP65TZeFWJyX
	/z1lEu4aIjDYsG4UWTKE7BTEYGGO8DnQJs+jJ22A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018047ffa6bc-fc7626f8-a415-411b-86d5-944224050ae9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0b7f60f87dad20aae792c275476261a7b769f36ae3e5cf30d8a5f981bb30983
Date: Wed, 20 Apr 2022 17:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650475378
