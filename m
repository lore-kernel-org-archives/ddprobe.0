Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E670D817
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 13:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658840813;
	h=To:Subject:From:Message-Id:Date;
	bh=tG3J3+zGpObb6t/jqnxXSi6oJw3SIZjJcuyHnQWMIn8=;
	b=PCC2vervdF8SdDPe3WTCmgfw6bRvpIe205XqEyvenC5lSXvwLpB3kVJ1pQMQ2eg+
	w5kgs/boXU1MZJZeaUnstGxIc8GsL4IrWWmWqqYHbWLlPuzwIuV1WVEUKeqrIn8SDP+
	clv2Bv02KY11gmYEaJ6NZflmHgFkyQupYGm9WR9k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658840813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tG3J3+zGpObb6t/jqnxXSi6oJw3SIZjJcuyHnQWMIn8=;
	b=bp59sl6yZ5A1nU+xHGqwEcWT1TG4SIX0u7CCzG/L4+qCj7TvzEE/xLUNIYDMTcZn
	7j/0DOk1WoyPVn3zvtsN1Oc5l5IYL8jsrOKPq47grzRWHf+FPEq808p1xDh+eoSSsZw
	qiY/g9acG/ZxDkr4aDsafbUtvqgmChXH4sWPluRY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823a9e0b4c-37211ac4-c7be-4977-a1a4-fa995b6c3b51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3742dce595b21279737dbb02328f8a359de16aac78ffc0c26c8355961e784528
Date: Tue, 26 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658840812
