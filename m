Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CC323A4
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 11:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656847012;
	h=To:Subject:From:Message-Id:Date;
	bh=f1bNV/gM//ROXlxtbLno8Eab8C3+HYQPRxSUzXKHIQA=;
	b=b6fxPabrG/e5s3nhxNR9BEIRotdooeTexQrGTfwr//LfCkjBSocdyFKJ7pOC/tKc
	URuVPtHxsz0cBI++JUqY7wbaFRUZs+JZl9a5S0XqSoPhwaeLwr+xXsXm5l0xvuY/4Cd
	hCCDNeFvdOeSsT7wpeO8P1RDnORZCGWH8P+kV9xw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656847012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f1bNV/gM//ROXlxtbLno8Eab8C3+HYQPRxSUzXKHIQA=;
	b=b1Pk05J/pVdI9M15FsIgueKiLrsMpGBm56SxVgImIg01jK0jWIJTwjEqtWnvpLBm
	7MzURE5gQtigPAVOt4C9bkRpASoKHgmtFIdZcDGp5nklGDQxeNG1/1J7zjQMiQikD5f
	ceolli8LhYh3l66TEOMkW/+/3bcjQbjN3jSPd58E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c3c711e1-c0e22074-530d-4685-99fd-e3291bdd1d83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 450ae8799e07ff9a35e87baaa3fa73068c707426697a5fa5b6cb25402a53f8f6
Date: Sun, 3 Jul 2022 11:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656847012
