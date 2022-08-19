Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2C8160
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660890652;
	h=To:Subject:From:Message-Id:Date;
	bh=FJ52XNJ9be9E6EmWatXAX7OHPzGtI/8/xHgXoUbacGE=;
	b=TB/TNHPl+KbrX326lLjo1UdQwb/GWP7ldlptVfn2VqFVrtDVRBnmY+S2ogLbv0e8
	m0px1rkYLPESn4aACcZMt/WFWRv7bfeXzHIjesAXDrKytMor/NrFjzxy60EJURdRX4U
	ROwiynFokDSy8wrbCo/L0SeuJvaTr4QQrnbXM8WA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660890652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FJ52XNJ9be9E6EmWatXAX7OHPzGtI/8/xHgXoUbacGE=;
	b=k0NjDzd1C4df8HqLwsf74Eb8dA8f6/5/3y18XZzx0SqHT7+EqEsospRS+t6wIDUD
	SEyXXvce2BDRF/y/luyl7Jf1K7/9hvWpgiBbVAcIbe4sxsXj7r/4jL1F3+mX/99Szyk
	xm7X4juK98UzZc9R6FwWkdiTXp/7clstFUE0yUlE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b4cc1faa-292ce2b1-823d-4f07-b491-bbec3df08683-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5013b33a3ca5f6837641bbc9f7adc8f99aaf5e4bf123fde55c83d13275be46c7
Date: Fri, 19 Aug 2022 06:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660890652
