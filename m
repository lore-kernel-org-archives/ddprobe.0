Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4A34411
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 15:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657552612;
	h=To:Subject:From:Message-Id:Date;
	bh=xfScyHnR73p1alYoJTse89YBnKQ+LCXNB4bs3K4a/1k=;
	b=ku1evc3tRcfskm4oZOJDj+H1iAmzUTz8cpfvN3xyK87yU0FgUXOi2d6IS900YZ8t
	NDb9nBnDLoi9KDoJGzNvEi8Bh1uCi/fj7vCZKK51dL7nuZgpwSkHUPbMqIB+M1dCpGT
	DrLs2IEp5DkT4IzSLnEV35iod8cJpbkLxb2YdZLw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657552612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xfScyHnR73p1alYoJTse89YBnKQ+LCXNB4bs3K4a/1k=;
	b=O8rCkuSkfYDm60LIqrMECszM/b9t+tP63QrcwUkhz7DUcGwh3CGfcZciEjn15ZyL
	2ycslPiPf/KTn3kX5a++Vx7/bzP33Mt2C0FfluufFqoW3wQsEJetUYl4vyrPsj+isys
	YYPXuJXr7TBpRvtoKyKkoE4rE/s3tAo8Mgl/IOZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181edd5abe8-d920185a-72f3-4e15-9a16-6d6fbba535c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a164ead0ae4983a31a629db96abe587e1474a09d495fca57eff9d76b3a9ccd8f
Date: Mon, 11 Jul 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657552612
