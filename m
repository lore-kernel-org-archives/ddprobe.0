Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC92715A7
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 02:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653792840;
	h=To:Subject:From:Message-Id:Date;
	bh=BsNOKY0j8+wAJBFey8HKWTqVcf4s2UEnFejsswsgZeo=;
	b=ZlxPPEuauKQiDC5pjGi2tqgM0rPF89uLP/qAYztzqEsjSFF4JDhYySo1qkVlZLT1
	9jltiDVXyZcxxmg/T4dDr7llzLSs+uLUGG1fstGp5Q/bYeE9ocMGud4JDIXnrTxtzWQ
	t+coK85Reji33rvi/TceDvA7f1K2ARC74AUQtc+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653792840;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BsNOKY0j8+wAJBFey8HKWTqVcf4s2UEnFejsswsgZeo=;
	b=RTZ/kfVKH8i5G0IgpxmznkYHSjhKRFRWmKXdwUvkqkl3069VI1yKru8Px01YthZQ
	IcrtK4priDxew2btPhBKQ0pB/bLDdqP/0gMKDYFqY+YatzFRvZ479D0mBlevA5OQ94r
	M1fsfEiLtc+NPKQJa63SWsnqHloep2zZ8kxJDdag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810dbc165a-550041ed-9079-49a7-a99c-aaa85cfa32f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64aac9f557b610c5df83677b6351806a9e5008ee368d085e5beab044684f6280
Date: Sun, 29 May 2022 02:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653792839
