Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC20139C
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 15:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652801279;
	h=To:Subject:From:Message-Id:Date;
	bh=i9/HivrdqwmnUZ5KINGW2GQsCFJF03ywBUUyfqCh0aI=;
	b=QYfJCDTnavo9GoRU7lzTLc/b3aQhqtM3DJ7/1Gg62mzEkkPJWOvNN8Xq9Jc1nwUS
	9uMl0+1Ej8awqkU3LmlWW32/eQNC8mYUqGUCQ/LViqgnwZrpT5hUP1XE+8jK/81AHk/
	oLYjNQch4mOhMtef6OwJdGw0u1gwAXeOVsmyBkZs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652801279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i9/HivrdqwmnUZ5KINGW2GQsCFJF03ywBUUyfqCh0aI=;
	b=D4N1yOGHD7DJDXLIC6vSVaFIyTAOEg+d07bSU0HdbS5GB68CUWvBElQDnM5ODNqC
	pTmK6kL93EIh+LLg77MhaE2s2f8vOVohfbqNjQlmAo+/XNTAIwhrB3XGGIM2gpx0x6A
	HmFArWQIt1bUEMxLDWeA25mdBw0Ty9jeQmQjeA48=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d2a2151c-3669b393-4067-46cd-b2fb-0d0074711cbc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cdb9edaa16df8bf9beb04dc4047ea7485abce9494cf8c9608075604855100734
Date: Tue, 17 May 2022 15:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652801279
