Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2220D7E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 17:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648228259;
	h=To:Subject:From:Message-Id:Date;
	bh=6SkBv5exveHhcm+lrdbUa4HnRANut4gb+aITFN1VUjc=;
	b=fTOG4UW87zARMLvuPBXa/fn+rOBEW51CRfYpxWtKsvQTjDAl/SoviQe/nlZ2YQyo
	bT7t/yHBG2dl9MIckmsDZ6K4sq6v2sZjdLkEeq/klTQ7XbbQIxEEx/oVj3aoYFUkB3p
	5qcRyshl1zdmBDqlyFKb1Qlj1ewLCmmZFuGPF2zg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648228259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6SkBv5exveHhcm+lrdbUa4HnRANut4gb+aITFN1VUjc=;
	b=GZzsN05spnWpnrwPB6ZhafVzgQRenqywezVqejnwZ3PAsWKsHXL8KjszA83FiRwe
	UDuehcNtSp2NS8IZeGzfwRCTwQ/r2AVwzr8qNBj0Ep7CcmvyXhh5oP3eu2QluLv8JmK
	hPFpEkMP3Zt+PfujNL+6GIrhLCbG0KUJ73z33/+w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc20f51e6-5f302c04-4774-472e-9274-4bfafdeca55e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98b86a9fd8690c6dfabfb1d80367474280f9d041f8f96c451a332657bf219957
Date: Fri, 25 Mar 2022 17:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648228258
