Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F86117C4
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659259852;
	h=To:Subject:From:Message-Id:Date;
	bh=ktu1qOr64J6yhABehKrLdsMgsgkeLlTwAc59NWmWg/U=;
	b=fy9TxWh9qMrCFHhPviPxFdxhJfqL+3KjhEdO2NxNgWg7K84VRgQK1LyiAo9XExZl
	aEOITLQ7yIhCbXfWjEi2nWq0nHl4OZ90m5AJMtc4iMlVbpb4mD/goD+za8ny4am3Tu/
	lzkxhsYLYF0av6Pw6LOwqrxqSKVWmg//Nu7s7cN0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659259852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ktu1qOr64J6yhABehKrLdsMgsgkeLlTwAc59NWmWg/U=;
	b=h49Ie6umpuktZef//esb8F+G82wFuF5cKhuU/W3Dh00bKL01BW6huTeyk3Btvo8K
	AaIUTsIgH3W6NNFjekOaK2ZEws0SJbdr8zKAslh83NtMPFw+uVYTQGuITS7AC6tVPL1
	as7Bz5om38J2Eq6v89adgHEB/Xoi2Ya3xpQtzGII=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825398174f-0f4cb694-3aa4-4e98-888b-ca1486e2edb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e487bb948687b5c0a6d40b27aea6b9668bc0fe1bc4d79929bb9d9c893601d007
Date: Sun, 31 Jul 2022 09:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659259852
