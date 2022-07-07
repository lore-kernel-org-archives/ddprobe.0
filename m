Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBDB7C
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 15:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657209412;
	h=To:Subject:From:Message-Id:Date;
	bh=KUgHhxKIzBgYKZyAK5F6u9S/vxdVXrvSyYc1bs81d3k=;
	b=e5apYwqDRSOte4s9pSOVFl0cVrQmPHvXtq65bybhMHIsKksVtsROOATmAfa/WtUN
	PWHvN0tV4dyt7TFQtJSEwXLBW9LDl9RkfuJ/3SgBCD1dqqCANVRhR5qojb8dsnv31WS
	Nw4seZubDQM7SVIt9/L38Wo1c25rrYTeB9FNoWMk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657209412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KUgHhxKIzBgYKZyAK5F6u9S/vxdVXrvSyYc1bs81d3k=;
	b=Pd3v+8R494b9wtQomPKtNOv5In2EjtE3aiy9KGBi/D9s0bwkR5wIj8Ydor5qnaV4
	1bRc/gMK5s8ewjASWXmFOjlHsDlYmdIE1xlDUoVi5B9l+Mr1xbwaag4yQpaQCVQt9p7
	bea2lcR4c47A2EruGV/MbiwOCd1F6XzoGwCYBu6A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d960db68-941b907e-7d2e-471d-928c-027602a10cb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0280e445114cc98d47611758f21d3cdf61af772f65231ac80b83daf0e44b5674
Date: Thu, 7 Jul 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657209412
