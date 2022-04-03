Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAF2923B2
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 21:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649020078;
	h=To:Subject:From:Message-Id:Date;
	bh=PZdtSvdtDjXxozCXyS3Rk6OqfgNjrqzH3giua6AXne8=;
	b=LXNymMYbBy6Sr+nNQy83ly1BCtqbNHUU7AJeGK765xBRR0iMBpULDixxgiqOq/Kg
	YhAQINB+BuXO5RfyPaopqqESun20ocXYpy3n1Zft1ZDNuX5J5WnR3L7SDg3jpwzl1e5
	rh3YWpD5f18oK+6Ne4DOSBSurFyY82akfR3uZYQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649020078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PZdtSvdtDjXxozCXyS3Rk6OqfgNjrqzH3giua6AXne8=;
	b=gkl9KYvWGGR2m+pZrZkZAxsAbRfAJGs92mrZYayUYwTbNJpIWrq421rWeQ+xYR1R
	CLtRmJx0JFrHJr15LWt/efeunvEWY/wTm9JgXpXGRcCS0+8x4yQE3OPdU4PTT2hbPP5
	D2WSKc+duV10i6HG/xkIq6fdDXRfnE6nIcW7l/Yg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff14188b5-f56a025e-e71e-4298-a699-c05a4904e0ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67cc33ed4231dc7f94b92dc248fe2fb2f47b6e3b4eef2713d6a8fddf6273c35e
Date: Sun, 3 Apr 2022 21:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649020078
