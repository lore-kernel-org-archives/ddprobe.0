Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2790F15B3
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 08:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656146212;
	h=To:Subject:From:Message-Id:Date;
	bh=1lCdBzzr48TLEwsGq91MMIo3udAC1wt9t/wdCfkQtzo=;
	b=abvhvGrPwuQhFWw/V4pACrLt6mw0iVsz/autoWDI1hn5hBsMfKo9FMq9OTaWlndG
	8A37sedemnmGK9ut/Gz2OLN+tdMz0dxkRyArNyvA8A5Z9mon8Lq/qaqIsCWLIxRk6lo
	1TDpFUvSfRQ8o2KhqQE3h8NN5bMRuzTa6LxPiQio=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656146212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1lCdBzzr48TLEwsGq91MMIo3udAC1wt9t/wdCfkQtzo=;
	b=N0a7P+MF+LfXGTzfv2C7lEEMLi5Ny7kYim6T+OXtwuKYBjEcAH4B3OdVYhXCsugV
	v109NEAmOF6JE1sazDczi+5Vcz/gzuoxsYXljU7eR1sMEZOHcmVmYXCt0jZryVnGzym
	RNz6eHNpgX/Pfmh0EL4gtczWbtazB1jDxClrV9QA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819a01b5a6-eda7c524-0094-4e31-9b6b-e521cd4dfaee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 918a20aa1176ddecb4272db6119bc282379c45f97f787a402f2a691fd11768fa
Date: Sat, 25 Jun 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656146212
