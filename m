Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459157E9
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 00:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657328212;
	h=To:Subject:From:Message-Id:Date;
	bh=nKgkTajh1sckknyJXRkiC00YZqI+Ohfm4nT4N91rh8Q=;
	b=RfrdErPAG/IZgeRjLR1469k94ntqhNivGTIzFRqt/9VV1o6cLI4+y/qdXftNS+5D
	O1x3bTYPvE1XGs1iLNylSfO5Z0gGivPr3NQK9igenkxcUIKY3cXXtXm9NGS0Jp6GJ09
	1oQnYmh8bsd1iaPhoVxFWI+MHzLQo1uN99FNQHx8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657328212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nKgkTajh1sckknyJXRkiC00YZqI+Ohfm4nT4N91rh8Q=;
	b=DCKxCGJmUl4VXx/Wk2/ddIMWO2FZkWL6cQxV36QgwdChT709zw6f7L2CtxqlsOHp
	C+J900cas5JMt8EUX131p6jl3ACJZQbQbet3cfag7hPhdwVbwkFNYWtYsSiNVNA0HRK
	MR8eFZKdSXb37qvZpphdWBxpDQCZCf6zaXvKn5nQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e0759991-bf3bb0da-279e-480e-b480-73c21660b2b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9f3282f96a6fd88a78b01361e5e021e5adfcb33c9b35758897e2b0080184bbb
Date: Sat, 9 Jul 2022 00:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657328212
