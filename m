Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D6C2F2F
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 16:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650816478;
	h=To:Subject:From:Message-Id:Date;
	bh=/5eYK97KyFeeA+4qfKaQdd91XcHPgLd36KIsGFyaYes=;
	b=Hn4vjaqVGiUpm1eNhD1+0KvREjn4LeDT2StELPqHlLP2bt9TlmkzA2zwHK17nHaw
	21ZeTBUKapwkKxJlzbRnGbrj71Nw81DpA9gWAdCmRRHDFDQOK1yyDtQTa9DJl7gVoeF
	EdcqGDNLSZ2azCGBSzIM4Djw3oDRwrh5hD8wE5UU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650816478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/5eYK97KyFeeA+4qfKaQdd91XcHPgLd36KIsGFyaYes=;
	b=NkCS/QvdKpLwLTPtiT84a/xm75n42T49B9upU27PBMxkND19jwa1GDmRkovVhoyi
	4ng+aNbTC1yzChRQS5S6n5Sp2dVe8gsJ9r5Q8VZFQTQhSZ0ySWUAtwuJmxosDwO6H4h
	YRlhZrVkgW4x06qIFF+kntsCTwk4eNwdrAZp/h7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805c546c28-d4837f82-3214-46f5-b611-b8ac104f007c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a93d159e830c67c4b47edb1bab84356093d7aa7e19f9a6001b5139080610f87
Date: Sun, 24 Apr 2022 16:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650816478
