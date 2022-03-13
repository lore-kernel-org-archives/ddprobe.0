Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D62F7E
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647176184;
	h=To:Subject:From:Message-Id:Date;
	bh=S0yGDcaLuz+8O5lLVnJjPbdyqBPnOQs9/0nkE3Gwcb4=;
	b=AYYFQ9+UooiwymavylvYb8b1vpp7yTWb2w7O2oa53bOTpMsfMme9WMj6LljUWfY3
	Gp7nAcK/LEFtLC7KIrmrfsKU9aGIyLVuJyaw1IKaEp14TzvCnNIyef/xs+4Q5DXF9b5
	ejRTLI4RB+2yLAwrvD7ZRfxnfJNyBEql8Mx6+oQc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647176184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S0yGDcaLuz+8O5lLVnJjPbdyqBPnOQs9/0nkE3Gwcb4=;
	b=SuYogDWLu1f6/2AWfEJgfcUq9f7O7HC7LBWx2UGOkPKY/ySvR0/YQoaJfIC0Fai+
	iC6UWnTyVq79H8kIL0L4xZ2zPug4p/TBOe328XZCTj/NNewXhPma83UYs1nItCcs+we
	KkBDF3wFIGWaIG6wGOAfXhxLEOPc/2NcpxvGURkc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8359f3c1-4842f0e0-13ea-4878-aa9c-c0d4ca1d2040-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3e100057db4792469c5689e8043dc760dff9f93271c9e77559abff055d7e1b8
Date: Sun, 13 Mar 2022 12:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647176184
