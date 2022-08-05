Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654027C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659673252;
	h=To:Subject:From:Message-Id:Date;
	bh=j477UWefhqEDS3ZtxN3C2/LS1asLo57okx9BU7Q+9Iw=;
	b=VkrIku3L7QtllkjMe14BWwY1KkDa3rtr+QZ4FSSdPcbdhNG3y//goZQmFdTW2EAL
	B3T8PXF02v+Rb5iSHScw/DhbrxTbWUprUCNFjx1/UPSpSde/eYZW8QckO8UuywrtzwG
	jP0Qjy3KYJ+tZYvQDlHyeR0sCz9FFlrajlDCEOIY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659673252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j477UWefhqEDS3ZtxN3C2/LS1asLo57okx9BU7Q+9Iw=;
	b=CgAluSFMMMTqQJ3GIE4JE1jW67s63PBfyB53kWhB7NtOhh/7KiSyhZXKtfLBfyM3
	39iaUkfIT5InfBSUFiHbdoKJAt3zYTn0Bk6HWuszUlIpyK20wjd6kCeuV1CqchxGsgr
	eeGYWda8T45OTHipkdx4TRM0da0rZ7IJv6foiCi4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826c3c12e5-92963b05-3cd8-4196-9ced-a587c6418167-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59d6d2ddda7eaf6044dae13bbcb668960aac9b961b4b55a1bd11f41b6adf90df
Date: Fri, 5 Aug 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659673252
