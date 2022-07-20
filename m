Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B977492
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 23:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658360212;
	h=To:Subject:From:Message-Id:Date;
	bh=6cYnN/pZGoP1NYXvgUgqKndCRzVEtjSpdgvACi5kRbM=;
	b=XvOsKd+QqgLuxoRj0w63ByBa14kEDsxBlDUJ/OjM8Xfj1gK2PrF2Ny1EbmaECQQ/
	Sh/Ebf7jzaD1eTNxf3jhJHOOHWUuOWv60Wx/25kwRBMpQxf4vOXvI+1dRmBvIjcGgXW
	kebyhg6XPPtazOUoT0fbHX4htA3myjM4XKeEotNw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658360212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6cYnN/pZGoP1NYXvgUgqKndCRzVEtjSpdgvACi5kRbM=;
	b=WCICJrvulB+Ri3mxnzpxhVMmtVn+6IL19hNT4nhq66HZ0nUGCznFQbQbPB62kNcZ
	7z38sI8joxpOuiSYO++sLaPghISmAbSA/sunKBXlDTfmRvw+UUdj2FUHmfaG9g8asJd
	I91bRXlNZLRUFNhfR0/yr+7iG8938E7rrG9P13kY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821df8ab1f-af1c0382-7bbd-437a-9d0b-b7de32c92c82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddfd298ce4af9bca84aaa290155921d88283cdf722572412e30b25f8a857eed3
Date: Wed, 20 Jul 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658360212
