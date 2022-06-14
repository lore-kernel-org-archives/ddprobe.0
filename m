Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15407184A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 07:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655192999;
	h=To:Subject:From:Message-Id:Date;
	bh=xX3qjWJtD2m0db0br8ndrble4Ol8SOPIAajS7oNVDkw=;
	b=H7nbzWFMUDDo6IZXACZXPAxi8LmdP3OiPRVyyiRZiQN+9ODSnM8+/UtrEHbqZG9E
	cTDVHVr3ERXlQ46UbCiQZXWE1kLlLW/98dfpSFw1HLPXlrV9vFls75JVeT+mljnOYGy
	hlY3AqBrYlmwkylUsLR1Uul8RZmH38h6ouxWpITk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655192999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xX3qjWJtD2m0db0br8ndrble4Ol8SOPIAajS7oNVDkw=;
	b=ViplnFCYb8uvZl+75gKyJAWCN5wojRHf18FdpCaE0bNozOXhNE5i4ls1mLzt7Nh0
	56LRuNYRtnXhEivCPLeUxOMC+J56W+srRM0POLVGsuYnBxRYeLQUn/LJ4sg8jQkVeHh
	zEOTskyQnZLRUK3/f7ubMxDY1I2BZ1KL7NaPk+80=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816130d52c-d9cc7050-4059-4374-8a5b-a044c0ed49f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24218dbc902a76dcf8b0630dd6f5b23baae1847aa803bdffde8b16870d0a6b27
Date: Tue, 14 Jun 2022 07:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655192999
