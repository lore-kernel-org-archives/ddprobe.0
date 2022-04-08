Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE98229AE
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 19:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649445178;
	h=To:Subject:From:Message-Id:Date;
	bh=wfzpKGN8XTF8AZvkibbi9vxkfibcQRK2Wg3Z2hryPVs=;
	b=B818Yk8EBxa7KwEQ/rOV1UnYxIteUCylmY1xDPjRmaeTrM2K6zskg82ROocDgke4
	ODGW5MD4/O9vLrS1H4kSwxb995PLug8x0FlD8SPfLwpTZielSnhXPgPF2nQssABIHmj
	S1/alS0wyvm+NWoZe2xY5IUY6KBxbCQhyXxNvVI8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649445178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wfzpKGN8XTF8AZvkibbi9vxkfibcQRK2Wg3Z2hryPVs=;
	b=AweelvUqf8W+aA+LUgtLUcSUlgWQ3KY+kmchK6hDLPAuYO0XFgnPPej4BCbocm37
	UZQniY5TSnzNAENvWCvqQz34Wc8G81B3mU9xtG28aC8IXzaUmtPhqsJ3dIXgxTQvc8u
	1JW01v4wqIu3pf3/SijzYLag3CGmGIpIG0grh3Dk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800a980b9b-0cec3a7b-da3c-4568-b272-c0e49436c40a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52462d3f7e9dd277b2ef566c5a9b9a1a434b1fe4ebc5e368170d2302e1502b93
Date: Fri, 8 Apr 2022 19:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649445178
