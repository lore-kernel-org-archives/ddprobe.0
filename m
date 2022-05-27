Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D273B1FA5
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 15:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653666720;
	h=To:Subject:From:Message-Id:Date;
	bh=qVfslzY6Sn8d1HKEIyBBZfHZ8nHMGSuK8Cf6I7xu2B4=;
	b=H5B3+72um7qiHRQ16p54Ko4vmNAuws4fugO7HBAV5IE5GUlU23cwp+9ZJkqGYtxu
	+Mi9r0X3E4YWZDuw0rR+KZg3uwP66yIIyn2dIRLiPubVYUALAuklgnFS7K+hatL0SQN
	V+ekAWvgDhufLBHXbwKiICSUo61jJQovOStBdHQY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653666720;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qVfslzY6Sn8d1HKEIyBBZfHZ8nHMGSuK8Cf6I7xu2B4=;
	b=ZkWLQn547C0trytzbqHZB1a9wDhQsYBPhhQphwMtSIcsh+NQ5df9GGDjTN+pVdDb
	9P2z/Tu5NoMQoDT1DTuYGNJxLWRrkU6oSkYH6gpGo9SqxZpBOL87pe3MD51H3ahXX0y
	bY/UHC3fizmEBpPOYKyj2LvxYKjy3uDhTq6JWXxY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810637a661-bc66748a-5b2a-40f4-b745-79a9827dd578-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a591d833d27a7af918c3b2d9f41b6df1741bc80cec36e7e30152153aee5f5f19
Date: Fri, 27 May 2022 15:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653666719
