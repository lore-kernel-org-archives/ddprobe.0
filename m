Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C0F29AD
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 16:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657643812;
	h=To:Subject:From:Message-Id:Date;
	bh=RzpWCH/XA+hu1W/B72WRkOPGg44mTAzUWV2Fhdneynk=;
	b=HHM3MkqQ2HLJadu712hOSbXcQZvR6u/IA9YmmXyBgv2/rTa5g7zsBWFbQ0TJduSs
	1LsPDhcgp1US5BqlDTtrOl86H3DUt6Qt/sGuCF5E/n45/BWt3BP/9g/FhmAP1zd8kP0
	1dw5x1vMKV0iizcsTZZj/Kwe4b8W69MMFWs9Irb4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657643812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RzpWCH/XA+hu1W/B72WRkOPGg44mTAzUWV2Fhdneynk=;
	b=bO8dUtjU4SRsIDFWZEFwzx/hu5mZ6nP2v53SdWmvYGflfK1EfK5J0D06C0Rsq2tQ
	SyCjJ/T6lQL48Yu22OfmuozYBNcnDniwfdpB8YIgkQDiHy96B2rr4g+lRdHMGFnyGX7
	wGFQqngjwQ0RmJxIOpXKYLMiEZ+/LxZxBxhNa/pA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f345462c-f70a8050-4110-405d-a730-c19ca37b9429-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 883ec9b682e12e725ad347f64260fdadff388ede84b3b70778f9d47dea640de1
Date: Tue, 12 Jul 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657643812
