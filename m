Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8637B7E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661325652;
	h=To:Subject:From:Message-Id:Date;
	bh=4Cf+Pof53YK4X1mDeHA/LGh6CjByfvZupljc95sa0lk=;
	b=b0q15mmnsdfSgrqtvpZYhzhc73N+mpgBdMYsIcwMAN7BnkdO4etj7F5uon98hArE
	+GTl2cDr0Q4mCDUIxvsYQPfV0KD0hqKGJVezQhtXwtYV5qEEmkecdNlyD7TvBmqO7T/
	2ZlntoKCbxzmo37hkpvt1Dl88vPG6mq58p8vW9+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661325652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Cf+Pof53YK4X1mDeHA/LGh6CjByfvZupljc95sa0lk=;
	b=K4QPTF2FPo/dklWkVfg6vHJLbAiKBBrAmmXkEZk5vT7lnXR7+svBAJLQ3igagxOH
	Y2wDw7kS9UB3IX0XgaynCalD3+EHyScCS72RPPNLR0hOu4DY9YLimjdd0CBHDDwm8Av
	GZmI5PrRmEatxxNHMoXoUh6ECLhi+peMF+/ckS+4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ceb9b258-1dfcda4c-8b87-4ee6-b59a-07b1c5b1a934-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed10970b6a64bd5da7c259443ff0bfdc465759cd8dc87d02966913ad28c4ee5e
Date: Wed, 24 Aug 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661325652
