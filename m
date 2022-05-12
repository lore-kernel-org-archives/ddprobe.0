Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 762533232
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 13:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652361119;
	h=To:Subject:From:Message-Id:Date;
	bh=zBTHY1pu1gz/IkuTdC8cvmAsYvsNuBNYI6Uk6u5ZEbc=;
	b=QW3xaanDkBPujB+rEVC7WNmOkCKmUajXnebXvEgGsd4MQptd+kE+C74UYFgVjdsU
	Yhf5azmXtqso1eGX+LJ1Nk9/EJHCTetNRbz0LaehluBUVttIEXT+/KC32vFdyhVO08h
	o+WSKMzdo7XFU48ZnKNwn0vMgKp0TK3S4rxt28H8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652361119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zBTHY1pu1gz/IkuTdC8cvmAsYvsNuBNYI6Uk6u5ZEbc=;
	b=XcOaF9k73fuvzbyQhNUK0elaGGQDjpPLBQtH7q1GOFesFWClbMb1r4CIsRyyvhdK
	cbH9JzVVugEWxB/O7+1wGZy4CUwp2gIwQBI34GsCUp+5iKbp90mPF6XOev9AW0GVHuB
	VTNWBSwfgk2q5V00um803SZWR0ChbuJm5a7AsnrU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b865c64b-212571a1-21e4-4893-971d-8ea0abb6a4d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2c3068945e87409687295498b54f0619a5e37b3eea4275f1e9461763ec763f2
Date: Thu, 12 May 2022 13:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652361119
