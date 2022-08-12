Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B47366
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 03:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660273852;
	h=To:Subject:From:Message-Id:Date;
	bh=t/o9HYzCrS5LJpO8qcQ6F7kdz2Gtj8JblHaUOrm1cYQ=;
	b=Pi76oJycjOORp9rQ7IltI0YTZOUSxn+hXauyc+jO6FNMcYhQwVmsRfg77hmRy4nI
	c0JSKZ7lFxzW0ckR7Vi34wxnrpxc1gN/E4R/4dn7oyykzP+0yX52G78AiJZQxoyctc1
	SFSjbzEsGoXgPuCLtA6uvnn+29j7qSlgNHg0BB94=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660273852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t/o9HYzCrS5LJpO8qcQ6F7kdz2Gtj8JblHaUOrm1cYQ=;
	b=kFKnnfchwjWvjrWwYkyNRFgRmGY0RvOTsiZpRfXROODS3Bjwv/WNY26r9UHDDdih
	hGfHQq3pLX8ezjSjRzBJqzlIbo/q1ZckWkp6BSv+3ZxrdMEHfH37eXjQ1z+3RXxWXBa
	WpH1dNDtKt060TVuYhtY3Ehy46npOgCM0iydFfXw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018290088093-eca3abc7-6071-4125-9aaf-bee0583e7a43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 898b70641b82bf989b834ddd0ce261a5c41e2fca66800e22569c9f0696260502
Date: Fri, 12 Aug 2022 03:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660273852
