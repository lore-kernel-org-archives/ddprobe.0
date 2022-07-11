Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A30C1FA6
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 05:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657518412;
	h=To:Subject:From:Message-Id:Date;
	bh=P6vdpFAZvNRPHsznvUlNaEgmgJAqA3h7YxmL9nH1BmQ=;
	b=VnfmQnfeJFInstKwDvi+KUjgvfJ8DAzuteSHZB8hlSuQ49UCe1Tx99Kg719pDCqY
	+OU1ykk7pSQwC0iXACd05SUl3SWFOtgxtiEcnH5mu5kZFQiTsm74Nr+Qjp3j+8xvyzc
	o+PbfZUjsr0j+CUF5xKpE18/uHneF7zw6Kn1SfYE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657518412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P6vdpFAZvNRPHsznvUlNaEgmgJAqA3h7YxmL9nH1BmQ=;
	b=UtQLiPdRjaar9kRXvn84WWzbGmCh6CT+VWEPrWGS4tSBWMYRd94RvFtMOuHkZfj8
	K8zrYZ0DrlO3DRCIr65/EKDQ8PqTVdvjfbijCK3BhJOB2maeY5CsGZs+oXXYslicKDX
	MnQ7SNPxqmrBLfByc0qsCOqCJRGzZVjZpGsobmGo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ebcbd23a-a2455eea-3fd9-4ffa-95ac-a8b378388ed5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 502f2c235ee1ac6635510738efd03523c333933653804664adfafa674a0bbc90
Date: Mon, 11 Jul 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657518412
