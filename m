Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533002560
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 15:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650986338;
	h=To:Subject:From:Message-Id:Date;
	bh=ugYm6KDuEIp6alC1l3h0f+5NnknHE00xeGgsGhdn7ZQ=;
	b=Eb3Bsk80bf2fBB+2oK8H7yJlktnlu4fQkGGbQfUURCT8NadklbzyOL2vRf81Xo9d
	G4so4e5YIA4JUqiPOkwSVTM4OWFMKisj/p6n1jRx2phv1m+9VaMywheuw3ZdwPozB55
	J/Lp2aoeEgD8TfptrJzYLP2/bxQF69aqP1HlnNYg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650986338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ugYm6KDuEIp6alC1l3h0f+5NnknHE00xeGgsGhdn7ZQ=;
	b=QP8iKrhO+QSUp//Xrp+iC9BYI9NeyJftOSKlzhKnFbnZCJVWyrKkFz5l0QvvURBG
	r/ET5CFEY8CwARaagMPGpLjLsJvxDpzRLdzn03LKBu9rMxvasr8oQ9oFA1ctLkYpwrF
	J8qAY2bot1f2mR7yrbbwEsInDaQZII2TpRBLRz1A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180667447e4-35e65177-086d-4a54-9063-3aa93d030460-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d35bd7b081d20709f37a0e97a6c6247fbd80ae0cba628c96b56806f87a57f4da
Date: Tue, 26 Apr 2022 15:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650986338
