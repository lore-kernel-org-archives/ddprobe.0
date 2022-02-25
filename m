Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81BAC2916
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 22:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645826484;
	h=To:Subject:From:Message-Id:Date;
	bh=yxEsyHetMmxjNPSQzKxSgO9MGGiqfS3wB1VI+BKB3Ts=;
	b=P7bVeuXNfP6Kq6wwFnfWvuFJONlGORSUHc/uJW2gAj+l8tiXOG46ofXvnUzNLOV4
	+y5Sw/wb2BFzgvsMP/B7c7/nPNTAROXfthfMJ4cmTao08CB/iC/he6KwvK/VoXjeIa/
	960re0vykEJHxms1+EJT0H3BxfaPB561nLn7ax2A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645826484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yxEsyHetMmxjNPSQzKxSgO9MGGiqfS3wB1VI+BKB3Ts=;
	b=S8LSmNF02bWY0/cnZT5bS+HWxlWy+UwliNESBF4QqyC2YQG8WRzoQFbfUZ/9zm02
	+w+RsRD45fzhTfnrCetzEfxp5PtPnB0ZFgwN3rlWwiIg+ZDFIvnl4/kVYbeXno2gShf
	XG47nQ2tIZp8w5zeqKxYWRzXSX0wAOU5gopnOriU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f32e72a2e-59f29fed-1412-4143-b04c-59accad90cff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d521acd6ab3b5554eedeb4e3e379e2840a889e511c46a55e8aa261461059fad3
Date: Fri, 25 Feb 2022 22:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645826484
