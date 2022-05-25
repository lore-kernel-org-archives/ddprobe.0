Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D59A38
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 03:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653448799;
	h=To:Subject:From:Message-Id:Date;
	bh=78x3pbbES8HGUsR/IV8vTbGKq50gGDdgibTraQ/ijsg=;
	b=JEjNdCYyOZ1cjIrLRq0RuT6ck9MHpOavfHCo0oMuy9ojjs/BohLjbU2l5WesvI2u
	+O7sIEw3h/Z3+fovIsQkXwHplgX/1HGKBS98aPj0C0OFhI5/xja2VnVu/K77PZC44Yb
	/GPJKohTMIAxTRM7gJZOBvPfhjJQhTuR9XhegWMg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653448799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=78x3pbbES8HGUsR/IV8vTbGKq50gGDdgibTraQ/ijsg=;
	b=gG+mK3LYLe2yD011GvHSsGYCHrgUfvIR7MLNCYHDYgUJcPcZdt3D4jnZgsKHoLi+
	O3E1zuAjIWOjyvCqFWmz++V+jDGJDGnSlM4UU0quy2NmnQQ6p0Z2nmhj5WmZi2nUq/P
	RPJHbY7aFZZiWnKct4OQCvWIotYsyQvh6R1mAIx0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f93a7427-89c5bd8f-a3d0-4040-b7fc-57535ecb0e12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40235f85f1b5dc7958b322cb9e2ec89ee1cf57df4e754bbaa35745d390f253b0
Date: Wed, 25 May 2022 03:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653448799
