Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFE4F28E9
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 18:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653072479;
	h=To:Subject:From:Message-Id:Date;
	bh=+KzmY0A/+x/uXJJJ3Jxcg2L4dmjMnJ+bF3EN4LMx04Y=;
	b=U/+06URTRuvjsVAG6DVliK0gstp+2+Cgt5Cnw1xV20wxYLGOiaWooHbwzkxmD1+o
	JQ35odR4QJ5tECCzC8pdfKM5tcoHEIbUELjHXmwIyxqxdbqokFZK8VoZmKoFKLiD8lX
	N8oEefOsSAsFZJi3yDe/ZZvI11l97vck/BHoPMqc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653072479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+KzmY0A/+x/uXJJJ3Jxcg2L4dmjMnJ+bF3EN4LMx04Y=;
	b=aL9EVLeHjdEwvTX2JlBQCWT0pxvSXCm57GqsU4XXakFEr292jqiM2+lesS5Lewqe
	SrV+dGJ2pJSsg6xDludBv3noofSclCbnBLeuV0/uddIaz1zrEbO5RQAsXk2OTGMdWAj
	lAMVEP+j+rqeYmQjsAUv+XROg4dAo8LQAAUIUbTM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e2cc4472-bf45223f-75ff-4255-8900-bf6b4201d062-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ecdcad2b935f8a6315178623a91fc066057633373e6339a8cfbc5f947cd108b5
Date: Fri, 20 May 2022 18:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653072479
