Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365544C95
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 19:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657655212;
	h=To:Subject:From:Message-Id:Date;
	bh=1JwyZ9CwPerblFBB0sjoSqAI0ePLABU/Y2/vrNoue+A=;
	b=MZP6IfuB0bo80ND7+qOMeDj7nAUN7yxB+lhhnSQX+6BS+Swu44vlG/dNJ0yqBiAw
	6XFVM0jSz4i7JU+nNgkSnmt0JDXoPbkx67A2qPqKrZMiNfF3FC3MnmZbFBnr0D4onGc
	4HM2wbKoo6tAdDhIieA2xT363hMLSBa5rZBKXnw0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657655212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1JwyZ9CwPerblFBB0sjoSqAI0ePLABU/Y2/vrNoue+A=;
	b=bJsozqJdKTH0vsukqskL77budFabbG4v0HLTeNpeqf/6CdozybjeIFvE+OXSzSE9
	e7JXc4q9iq2UyCGeNcbl9LCqeQ4Q86LzR8KxVmVIgBqaoLayma9CcxHT2bRcIAsgae8
	ckHdEg6uBngMU4H4WFhqbTUQOF8htYEBekwnoRgc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f3f338e6-ff927562-cfa5-482f-b4c4-c71a20841b2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb6738407b19ec9aa1a90523b310e1ad3a86b62d6b84d2999d11cbdbf96c7a56
Date: Tue, 12 Jul 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657655212
