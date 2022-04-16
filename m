Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E9C33CA
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 22:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650148018;
	h=To:Subject:From:Message-Id:Date;
	bh=tyTAQfFyoce7z1r/fEx5phpzttfkCkwBCLV3C/dj6dQ=;
	b=JDThvJuvEt11fgpMgYos54R157HWlMbcfhl3oWRPkek9E4CymNBZLo4UNa7MO4pr
	LFScqA5ToNPaZ9u9LEb6Nl4CNhDErSNBQusJWHEoODKJobKIOeSZHA4xWr0q8da7TXa
	qp03BCDEl5AOMrrvKWy98toVeJrrxn1JPT7yL29I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650148018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tyTAQfFyoce7z1r/fEx5phpzttfkCkwBCLV3C/dj6dQ=;
	b=FkZI8FCLKW/8/4IWYPtvKfD0SAnVWjeWUBWAI034TQ6WRPR62GymOz/U8IDEnFrN
	KO5U+VjZWoGXtXxGgbJtSrWcAuOtPy/40IgMbcHb7cRrWOPywXzmPRWPNM6H7mctzm0
	gXDRNsVWz11XCnnMpZ70fdMKrB7S8rdb7eNfx92I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180347c8864-f9192348-ca63-482d-ba74-b9ef62c22b75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd38bf82af9a03f774fb7b7ba66631b0adb22b3f1895b0730bf3ff4ab4739742
Date: Sat, 16 Apr 2022 22:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650148018
