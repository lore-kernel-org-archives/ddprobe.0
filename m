Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0326D363
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 00:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653350579;
	h=To:Subject:From:Message-Id:Date;
	bh=PqU1dmMmDyM83FOEjQKI/eeLRzJea/597Di3IKLdqp0=;
	b=XmcFZFzVqOzixj79TQf7M3yW+dzb2981csvqm8PssYSQiyXIgv46N4vr2GVDcjyI
	smH4zzm4OV2MSiLCBStcBpOdBJlD0rfQ1NEUbhpg9CfT3aqKWUgG8bpqMLwkQHHAgOP
	fXPOBvbHRtzNNC1z9hZI8R4wmFEk9gjer7Uw+22I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653350579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PqU1dmMmDyM83FOEjQKI/eeLRzJea/597Di3IKLdqp0=;
	b=k342284ncEwbSQ9tX/01GSJWjpiS7Rf55CoEkig2EAJe7KEtnilFxf54YtKIQTEh
	YV9eiTpbMzf/53UZNcdi4dazVazvUQFa+DliymK3YzCsVoxgqSCHy9JPRMzOIjZ4Rn8
	6HkqiZM4cK8l4t/auqcNUNiMbqPKMsRVamK0lbW4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f35fbc4e-eea19f6e-50bd-4416-a82c-b2be2f31c3f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a13e875c2714b4cc96df94705701acc616332f10896df4e55c966b030783a46c
Date: Tue, 24 May 2022 00:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653350579
