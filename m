Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E04C4411
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 15:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657553812;
	h=To:Subject:From:Message-Id:Date;
	bh=11Va+cAS3GmOuRQiLu+IPrIzgirA0hGr+JthmvrR994=;
	b=PPDxI8SMytECqaDSUJkBPhX4MPfwVsX4H8cb62tTZxtxEUzKujanaPu7wfkB9aKl
	p1gXjL0WNAendCXBfU34ggVQkfzHWRFtHwil4SBPT4G1EFWpONz1Je17BMGBq8hAbV4
	Jl2M1V6B/QfpyTQxTwfnFdh6qNEuv8vCSiEppitc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657553812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=11Va+cAS3GmOuRQiLu+IPrIzgirA0hGr+JthmvrR994=;
	b=k86PYCs2MVQ+EcHj50cF8WUqTTlcXAjoFzvuUjwuWK/eskKWs0c9c0R7bZt4CXqF
	hMy5kGwSx/n5Js9yklTRxDbnDtI5jtxXR0kRxYJDIBQ4HFPjKPinPYCV3lIbbwsNsVh
	gsA0Z2pwxm4hHDhuGKGoQTwJnuXmTM4tyvJnvjvQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ede7fba4-2d61f002-bae3-46f1-9205-582102adcfe4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ecfccae5a616672ed1440a6743379cd8a6c25d23d0cd1a740700d08011eb787
Date: Mon, 11 Jul 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657553812
