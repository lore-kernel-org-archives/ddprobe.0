Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DB01FB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 17:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656006412;
	h=To:Subject:From:Message-Id:Date;
	bh=dvBPCGXvBVeRcT0kazhIM1D8DxF7o8qaomwMr/pvink=;
	b=GE4WgxufwqT/F9pcuCNuRLDSqNwhriVuSabKzWaXAVUNmm++5YGca90GzKL/v8P7
	jB1f7aoWuo1s9lWdwS+EN3A7oSzEGgSFyZCKO8EMZu53djmy+2DIofr/mJcyCxX8ZV/
	gZEj6gUswGG02sCkfukMlvosRAYHGHcNZq6P+ors=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656006412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dvBPCGXvBVeRcT0kazhIM1D8DxF7o8qaomwMr/pvink=;
	b=MGpL4kj7O/gXPhAeHWj4geKCo2G0dg+4/aqJLCtCcDSQFjGQcnStvxRUuyS70OWZ
	MvKoQPMXLZUQQd+2l+3Rs8ZxTU3EP1EK2/TOzsjuBkSYC32w3fqqYSF/ADuBk+9neqy
	K+3Tcqhmz3oVO1D5B7UtjBGyDRDhSms4fLAGdE+A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018191ac8804-a04cc488-4a1d-4390-8bf7-d436879e67e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31c4a8e28c126fe74e037eb7015fbc4a4c3565e14c4fc5fa2dc71f5151a28720
Date: Thu, 23 Jun 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656006412
