Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2A015A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 07:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656920812;
	h=To:Subject:From:Message-Id:Date;
	bh=En2Wn8zr/XBvxQ0c2EDAuAHJ08yrXQ/vHWler4D3Qf4=;
	b=LFAl8uBkhIOXfPPZWd9aKmFpUfa9GNP/iYA8dDiMR7hsHIRjDQfnun9ncGUqMBHF
	dHzITAI86Qu6fugu1b9EiZ0zjME2Oz8OKNmKYlY3XmHyGdMPUFH63Zc7lEbKJBJCU8A
	X36YyYox744w9l69OfQJRqTOiO+85iWxOjH3m7iU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656920812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=En2Wn8zr/XBvxQ0c2EDAuAHJ08yrXQ/vHWler4D3Qf4=;
	b=GuLeEVgfjm1h0Efw1g3tvCma3aZNs2eek9QN5o9W2pQVkFb7r4kt+Z1oGg6qHGxy
	7kVRP0AOtONqFRn/nAjvdujz9Hogys/xRLwdDmtSTb6BS8s1uTiPm8u0vV9ltadp22c
	GETOgDI7MYYT0Oz2gsfiSPojGOlHNbTcveWYjSXw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c82d2b2c-0d93a0d6-70c4-41ba-b57e-7e4d68a276ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb8c8887d4c97c1338fed027909bec70a0d51af1538f3d64650ca4a2cb8fc470
Date: Mon, 4 Jul 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656920812
