Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7FB07A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647279684;
	h=To:Subject:From:Message-Id:Date;
	bh=0FqrOtNA4kQYrZhPmVbMn0VW6NdtIeSrSnav24ruj/Q=;
	b=HOo28LNty3G25UwOj6dypS82Ija4WxovDJhV9Khz9M94N59Be6H12XXyD+Fz5THD
	u2rXj8+7cVM+GyDABlFj2mczjAUcb3MDzKhZPSywgNy1MN3SXCkitJMt7rSY3ehKm44
	sC/s/PdwjgmULiB3qQXyC/2Nx8UsF2MC0KMAkUcQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647279684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0FqrOtNA4kQYrZhPmVbMn0VW6NdtIeSrSnav24ruj/Q=;
	b=YbMWmiXmKQO0qF3SMKTXrR2jP/ePMkRViTFWuUlIAkf0GIoZsS3s1aWZB4N/Y4Za
	GA8KMAlmngj1pyCGbCRjXLakZpwPRmQpruU6JvRdIKxz0rU+ruswufbYvulO70/tM1/
	wSkMmE3jYiu5mH61BYbIqWW2VkFKvkg7dWrbB/xI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f89853caa-8b332ed0-62e4-4412-ac9d-639738e8df13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16e72bcab6837033f07e181cb76d8d3a4e6b5c42681b6f4154f73e923563720c
Date: Mon, 14 Mar 2022 17:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647279684
