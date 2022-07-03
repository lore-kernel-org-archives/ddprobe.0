Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241D01FA0
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 14:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656860212;
	h=To:Subject:From:Message-Id:Date;
	bh=4ORPNCB0asFrZORAzhc6kIMkrKTJn5PmCamgBWHXWko=;
	b=BNYxi/48Iqkf/kD5G8VHUxfQGaNuhiImp+0MOHs5NUYq9r/B6nlya2M7mCaT9Zsj
	XEiCLAodv3096Px66561hhB6q8JzyNww5cNQBK5fM1cbqyLhZjYNBHhudGeMPI0HkGA
	EZ+fsLJKkXCkT8F8UNo+1WGjdjeunc/XlcxxH9GQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656860212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4ORPNCB0asFrZORAzhc6kIMkrKTJn5PmCamgBWHXWko=;
	b=Nv5KpxVV9piu+KGEw2sbxOAW8lgtc4eJvWV65atA70oBFjFSN3HzuXKcV/0FCZHm
	kkqBe376VJAdyWdmrSpDXa7My29kDDUgtolTVWv7f17q/eoFBhkw2iAAiI8TCVv2unv
	z7+AlBdt4MEEee2I4YETeUiuxL2AxXp/YbMsrrWE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c4907c6d-8443e6d6-2432-48cc-863e-368b4c685df7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6ced1deed7daa956cd1da6d89711c8c474acc33fdb908e01adf78ae8a897728
Date: Sun, 3 Jul 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656860212
