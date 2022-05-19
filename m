Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE2E923CB
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 10:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652954459;
	h=To:Subject:From:Message-Id:Date;
	bh=4AuJs8+YDseKscWLAEi/2EdeduNcf3c/iC3XCsOrpMA=;
	b=RoLVp96sepmOHPhrB5fmd4kxWLoAA2KNmpY8BkmMPmCqAjxMBWb5lgNuZHPW30p5
	VSEyowGHe1aLH7bwRw+ffuSVvNhhtklN6Y29taLgWYf+XjQ/9bRokUr4RXv0VvalS3w
	WxFFxlep0dC1Lb6tbGDomRDmYWOl9k4zKYnwj8z0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652954459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4AuJs8+YDseKscWLAEi/2EdeduNcf3c/iC3XCsOrpMA=;
	b=deKjlbKr99gL9JdY0Ix/lvWyVG37MhtBdvXOvbqtJM3DLp+XjENwcTAIBd5tzTUD
	eCJYqVE8ZswFydPKobQtDYyyelUvu3mrmtS+mx/vdRXyEOmFWU5kOeD+zSTpy/zyapt
	6v7qVIsLzRUXAN8chMrG0Y1bBA+XTrqzPNT3jpZ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dbc36c84-d860e481-51cf-46a8-be63-df9aa021a6f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c59e3ed18bfeeab4631ffcb17b02cd52603b80f61e4d8c3a9bda326de6f7c820
Date: Thu, 19 May 2022 10:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652954459
