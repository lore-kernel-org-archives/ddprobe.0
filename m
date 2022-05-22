Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A732598
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 14:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653230699;
	h=To:Subject:From:Message-Id:Date;
	bh=qDwQzQB65e94HyW4tEE3E16mpp4smULGyf2KVPJ1Om8=;
	b=J1hfT+KqohY3vUXhLadLT+MOwQHTSOvkI+EoT5OKzlSSWittudVbaPYQXIboe106
	O7LcnGQGv8iYYN3bauijCYkVdt9CfhMNGZ/CS+ZWNjQAAm6kKMSboV7VKe2mNhpXHtt
	ATJldc1RYa2axAhp1P01oc6dXVZKZt4bIulaf4lI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653230699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qDwQzQB65e94HyW4tEE3E16mpp4smULGyf2KVPJ1Om8=;
	b=NXcgVrZh5MUbHx86YgLRiJ/mKGuvlImH04+mXjqIzlu5e9DoHK794OdDMFs9uX21
	RtKoCxu4Fch90dlueNIdOYigGDQZInzVypWaPBwJ3Y2r2UiC8OV0h3mYuGXABK30jZV
	H0KR0WAsEl88rgJBkyi/dLR2H622aRI3qFn0XkFU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ec3a82fd-1d14f1f3-5df0-456a-bbeb-72579cb8eb78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3043a2658a062b886fdc047f6c94cd11728a05358d44b5ec88473b13d7d06f9
Date: Sun, 22 May 2022 14:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653230699
