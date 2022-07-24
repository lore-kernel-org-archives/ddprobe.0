Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F31C7E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 08:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658650612;
	h=To:Subject:From:Message-Id:Date;
	bh=XDFx15WAX2vOtH7VMaJmEqHuJhUN8W8G/LM9yCFJ+I4=;
	b=f4BifCv3I5CceAKrLBCoRBP1+14MbrbrisQ1qupUcBkpjg+iXSwBrZ0hf01ZjRh0
	05gKKFAHdOFIQlGYMQgmUr3pbNBm2M6dAgF/mZRTtlZhcidRisnv1pAx3sWLMTaW5+4
	XJ4DRzBHty8AEnnf5jV8U+NBNcrSFXEjWJeHkWf0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658650612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XDFx15WAX2vOtH7VMaJmEqHuJhUN8W8G/LM9yCFJ+I4=;
	b=e6KsVUIv8OQWNu+t8dZXhTfPi32yPMZvZ+vQAx1gZ2qiJdcIaoRYKiv5pZRfXoLI
	HiLwLxE6JCe5a0QplODTlzNFggjJvpLCcPEsas7dAJZqJcfxDXOYu6XtAhWxxUZmPdi
	5E9MdhFGiA4pVA80TfUerRfBSoFSTacoHooI6s9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822f47d27a-1511757c-a4eb-4c74-b0f9-352c65035a47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 358653b4654967b76e2e285cc60996544f51823ea973a469f667e85d3d59764b
Date: Sun, 24 Jul 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658650612
