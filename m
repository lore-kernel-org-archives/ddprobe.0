Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA9B6D19
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660765852;
	h=To:Subject:From:Message-Id:Date;
	bh=YAfmSxDUT+k4VIzviAQ0e4VehgqLyacq214izkRkoao=;
	b=CUscVNoEwUpc9ZMtvTMjgoVBuQzr0QLhW/porUUety741GN+Lea/rXxVJM9c5u0H
	20Sdp4u+OeoUpmiuXdFll6C5GsMEcqSvQCMSf+cL0NOHHSAXkrLf9fZrlaZgCPOr/3+
	05xOn+ERZUA7rcv/uAZJ727qJ80SmMltEkQ8MmGk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660765852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YAfmSxDUT+k4VIzviAQ0e4VehgqLyacq214izkRkoao=;
	b=SqTD1zcwK3MZFjkJ8sgQ9LY9Q5/vAoaHGbsBGuYLgIsJAVfD//PeNqrO+90C9Qmx
	PWiaNX7uNh9SGc00LRqHchj6bhAvXzJdlSrIGRFT4r3shujGZB8sjYpRPWKah+WrRR3
	sGmgsK87JFscOKVIT5EMQfL/71ia7fe9cHUcsqDA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ad5bd3f3-fb756559-75de-4097-9e5d-d381a1d77e1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e3c77675472b61315e1e16236381591aa5fe6a57ab6efefc31e477b6c88a2b3
Date: Wed, 17 Aug 2022 19:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660765852
