Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1183A7F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 08:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655455919;
	h=To:Subject:From:Message-Id:Date;
	bh=lK9q9scmrFCMbP9Bm0m5+6ZmfGHRd+uW8tqXHzOIjeg=;
	b=E2TtGI+6HgTQ1pTXFbxKJn286TtfgAAaDF2Gryi96ZUUMBpT6ggAQd9M3sL5kouz
	1KwoeNGHl9up3vyUjYpYl5koRlAEunJwqn3pm3M2BaQTwtfHJaJXBPgshQiqhMskX0M
	zSY3fyzXnkex4Hwz1DcBLFmkp6g+PXOCcbf6C0nA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655455919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lK9q9scmrFCMbP9Bm0m5+6ZmfGHRd+uW8tqXHzOIjeg=;
	b=UIxmujzjXZafook+Zys0tcLuu3NQjDAy4Nh/al4SgSoq2O2ytgJh49p64i8B4YmP
	NOIw/QyYbqJ4ubXhIQNL0iezGLEmNqxpsdeb2OEdnuPXuY8XiMiXaWyWyKhHOHS+Xmg
	lptiz5PTQgDbdWkJDmtVS+jCWvcW7oTCWc2eOU/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018170dcac8e-3515b996-7c57-47c8-852c-45601c33fcf8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63ebee032b12fe3c955cdf3e2826b37e7a7c122b303c7859d57512f8622df340
Date: Fri, 17 Jun 2022 08:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655455919
