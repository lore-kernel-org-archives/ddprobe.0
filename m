Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9F33219
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 15:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650036898;
	h=To:Subject:From:Message-Id:Date;
	bh=Z7VOJ7CXf1Fi8FpEqT1TMDxvCM84cKJcdr1t8VK/lfc=;
	b=hvM8VMoH1fcEfiB6CvQUf3g4ch7QIvfqPmasF2SRjUkJQXr0G51ryloTJfeuuC51
	8H106IDagj0EbEelketJhxeVI0DADj9xSSXe158Ub6wadrnr/xA8bmEADRSXFCRQvDQ
	Cnt3UUSoZHQk6IO5zDvwUv/yn1VUxpkRTvU2z3oM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650036898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z7VOJ7CXf1Fi8FpEqT1TMDxvCM84cKJcdr1t8VK/lfc=;
	b=K2yA2RDjkFkiVYbdmhptu2jqD/XEU4Nl8ju/Ys1CpT/oCRRCUiCDFNF+XtcvNP5E
	jrr+AlK29iJng5PWwKswQX1rKj+S2Kpp9ytQozQzogqrmIGckOdFGX4+y4vYDbVwPVU
	2GhGFstgZHFNpDpFRmLj5M/g7JF+FRDyJwo0mDcM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802ddcf9d9-26d7805a-7bf5-4add-a7fd-10ef72f4be09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7aab834377b5e28d6812399811663346be996cae2483a5b7582d1fe210cc5f82
Date: Fri, 15 Apr 2022 15:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650036898
