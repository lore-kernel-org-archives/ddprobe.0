Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFFE37A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 17:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654794899;
	h=To:Subject:From:Message-Id:Date;
	bh=0Rd5vmt0V3yAeShQV84YGJ7fcCTYxe7UwHCrw7LoFwM=;
	b=OXQ8bW9ulbcz6iCkMVr+gZZDwQ7tNjqlzrLJa3cua9j+41ThjAX6NLdRPSaHpcBf
	3RDjCkxqvdZP4bJIz1JvTC66sVKMUknG+y3RZRJi1eS7z0NtF1tfw2DkFWAG/6ySDPY
	M7Nwal10no+RRTUhXsgfkKabkCcI/b7/USVtyT38=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654794899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0Rd5vmt0V3yAeShQV84YGJ7fcCTYxe7UwHCrw7LoFwM=;
	b=g/15rJkIhNgTgcjvy647gtlrVi5GXxwdH+u/lRGan7pmAi2BlJ+bD62+B/JzqpHm
	tokQvRSAgBvDiOKXvURypphYpXtMFdnl5UT41juObCZfwrgd6IBg/BxrTt+dpeM99ap
	XE5kh/9nosdKC5k/A0FfEofOikmNcCEKYNaJe8+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018149764f35-5cf81360-9b59-477b-9b62-2855bad7500f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02a939a3c434d430079c3d2080ba6bd828cff1fc00765f44c972686fe7005f73
Date: Thu, 9 Jun 2022 17:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654794899
