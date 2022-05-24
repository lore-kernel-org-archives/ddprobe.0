Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0806810
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 12:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653395459;
	h=To:Subject:From:Message-Id:Date;
	bh=InKPun9eUXQBwe0ByPwO6+nRBj/L1hyutnouXW6X63Y=;
	b=hfsX4H3MQuL9ZF8Q/BU07791LwGTNxVZsUBC7fHSUxui6ZPl0JGWGvZS1BQh4nws
	FLArDf3pKIXLoflRQmwJ4Bd+zD7i0hEE7UtLZuQHzCGKTSLwgzfasY/N/c6D/TlIRmm
	VwgQG5iBWGJDCiwrJdAWuoAB5HVEUy24PHHE3wYg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653395459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=InKPun9eUXQBwe0ByPwO6+nRBj/L1hyutnouXW6X63Y=;
	b=gi7MeAMQb2xpYEvsfO5RC9nTJNBMvmt6fIW1EQTfqAWktUaSNfh9fmNLHLcGkH+2
	wdwqA+zGxiP8UtS4aqW4JamD7nwB+fxruiHw/YwRzIT18k+u/W07cPeMo1XWo59jgNs
	5aUxveK+7dmJuHZYdf3tDRuolOh/+g7ctC4Gt5Z0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f60c8c92-b93e52d0-d92b-4f98-9f0e-9ce65eb17cbb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25df0114d6e931c6e38ccbb6bb75c85eb2390fc6b5a5db99bca66d888e6155d7
Date: Tue, 24 May 2022 12:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653395459
