Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159897E
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 01:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655343959;
	h=To:Subject:From:Message-Id:Date;
	bh=idCmZkiIRpczaBigS9ygsWJk0KbYB5M2NfUciHEkAr8=;
	b=aGa7NHnRhBW9djYTzNRzSI8I11zZlJYD8+JPVocJq2U8mz8B65tT4EXP/BYAybef
	FhQDfr/0aUZnqnh0hA4pvf4mtU1XRNAdI+7kCV3c+h1QY20mZsaRT46GoHZLaLJPg5x
	oAUro+tG5+v3MucabADi69XSv04x5M/RV/RlCgGw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655343959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=idCmZkiIRpczaBigS9ygsWJk0KbYB5M2NfUciHEkAr8=;
	b=HD7TVD9lEIRbpKNmMOL7UcUmiIRBQPgeD9qm5n1NOdZbH0pStQPvFIl8bsLtRMZ/
	Ds1WXI8Vp8h7rR1HkgZsrt0dOqb0bJH6zIJ6+90ldxFc2WQaWCQs3VmxPrn7W0zvvmx
	nconIDW9Cb0X8/gHGJod8Mk1s/QR2Fh6y+g19q0Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816a304ca6-87f1d271-0c52-4af2-926a-405c88653757-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3405a5dfbb10c9c5358e4ec1619f066ad44cb8c17be526f982ab4da5f109b681
Date: Thu, 16 Jun 2022 01:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655343959
