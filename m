Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84B7A623
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659681052;
	h=To:Subject:From:Message-Id:Date;
	bh=wUww4ha7C+kWYlQnY4XcVU3tJpQARU2+m2TcQy5gdC0=;
	b=PAWPj9jewIIToNbwXbZ1X+sZ3NNCEBE+Yv4MkI280T7OUvLgo0fGEZFt1UE/cT/V
	PhtPFvSxncQyUfKo2RPQknCJDxUsabkXY+Jn2tZO0v3qXRE29berR7SvYsblXwErYmG
	nYCR4g1C7WQlNbpAsofP7IGZGBe8g4VvweRCCb9U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659681052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wUww4ha7C+kWYlQnY4XcVU3tJpQARU2+m2TcQy5gdC0=;
	b=WXH8lp6fo2hnsy6TIty6k+cT6zqTQ/5CVgT4bwF7MHCodhI+YMovM01boQnfYzpH
	bm43+/x5M5EWThAiQ/5ZwbDwxSAGipz4Q2PwwB1+ZqavXW+BSWOg6U/gsgHM287FJp3
	S5XiQq7yF/CFawXrSC3Q3qOvGFqFjY9nsDsLyVjQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826cb317a5-a2a3f5af-b0df-47b9-bc89-ad494e5b2de9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 815cc4ad88fbd672886559beb43bd58783b7298a0f0cf1a4a06cbebd8b401ccb
Date: Fri, 5 Aug 2022 06:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659681052
