Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B2823D77
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 11:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645096285;
	h=To:Subject:From:Message-Id:Date;
	bh=fGhd0+wI5SDAzrMeH6yRX5QLunZsk7k+eKsq+5oxhtA=;
	b=itBGovkJMkk2QfJ3qMZo4aTHUu9haFoyTb59M/K/k7gIG5CSAw2OyGo5+DEafxOo
	+08aolhnaAPALhAxOSU1h3kmZIzInfDlmdPJfxsk9109D0+Dtx84tkg/E9zfEhsH0c0
	k1UfeR2g4/+1omuK39S/ONqnz2f6sSVBhbl9DfOU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645096284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fGhd0+wI5SDAzrMeH6yRX5QLunZsk7k+eKsq+5oxhtA=;
	b=NGjeHeMUQe8iKOZA3mZUbHZPCwCXG/8RFfg3y9oN52fmJlWuoiUiaGHfRPnv6zkE
	otoxeIAiBLm46dtJJfKRapZc2cGtdVXdc1NqkON//if/4JaZr0UsfU5cVTibySyAsp0
	7aPbnr+wpZRAJholdOdOZ5icPjBdkQWNvQk2QV8w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f07613298-5ff42af4-f4ac-40a1-b1a5-70a9c67c7a48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c52f58a31b04396a9d776b1544227f5eb32f513ac75d76b22dc2115a66bb7c4e
Date: Thu, 17 Feb 2022 11:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645096284
