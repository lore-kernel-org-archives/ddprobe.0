Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F631FA1
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 00:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653609779;
	h=To:Subject:From:Message-Id:Date;
	bh=AFaoPRXiMEYQ4AVYARIAIiVj+dkuSK7cFOTeoVqDUkw=;
	b=Q/mvAffg2uoHzoOMD1beZDHE/URw5KndKP2k7op/whAGJ+Edps8z9VGFuwom16DE
	t5PTBdkPA4gW0A0fWcd5W0n5+3Qy3pjBVjfMXfLhlSNNho4LkkFm4R4DwY1TP2ry7kf
	CLwwVkuhnLLjGzEMMh3EWoKBj320aJbjnmIwrxo8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653609779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AFaoPRXiMEYQ4AVYARIAIiVj+dkuSK7cFOTeoVqDUkw=;
	b=JSi0aA14vaPs01d/of66CcqPN3uyEAgNKLtVN4EuYFFx7k6j39/vrcVnpczxQdxB
	lZ6gpCypdhYR0r1bNxCBT19ElG+cwbsw+Uo3nGrE47nVbmd4zZjikKKnRVEx7JOT2uh
	hlr6qiHZ9NgX59WFc1TDh8My0HRNVuL1wx0ToYPo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018102d2d03f-1a07a8f5-d0c1-40ed-9fbd-d87b1c904467-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a562ba0ffe65a2abac41c44077fd8f68e61c4ec1ff3ad401719d28b088f9157
Date: Fri, 27 May 2022 00:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653609779
