Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FD528E1
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 09:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657703212;
	h=To:Subject:From:Message-Id:Date;
	bh=oKc87DRRcNyAXx/bPQaGMlX/wAdxhdyZtnCVJempbxA=;
	b=gKy20G9E3CEM/Gw0lZOlbWXen/O7/AMkPJKjJO10cUIrdIhqQ/F/7t1hL9306LnZ
	xZlLW5pJS2tkLUO6AD6vLm6zX8vTFNRjGQ0DfYwgTmq42nFFoqm+JG3cxwF2p0Qx1EP
	Zta4+Zj9/ystbC6K8iKF+m6QOmkJ+Y/N8MZI1WGo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657703212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oKc87DRRcNyAXx/bPQaGMlX/wAdxhdyZtnCVJempbxA=;
	b=bQlIQJ0k0mC2wYyr5+n+nNcoDfxXcJhgODCah/QWb24OwUqVIPJn4bT/i5EjjKsR
	ltm5fKN856h4BW4J70ionLZt4r3yOKBIEooJrY2euoPVCoWOuD64QuAC3hQvY3xh8qJ
	J8hsgxXKqrDqY+a2LBLy3xSLvxNLfjistfIF57EQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f6cfa4de-905c2f4e-b060-4b43-9308-1c7c30136048-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54762cfeaa54336489137b0535e254fad658213679a5fc25b4fd717993c6a677
Date: Wed, 13 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657703212
