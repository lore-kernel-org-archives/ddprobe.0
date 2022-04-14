Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592A97B
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 10:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649931478;
	h=To:Subject:From:Message-Id:Date;
	bh=QlH7TQAS8v2AOJGxwx+b85+RniStBx5oR0CLs8rhqoo=;
	b=HYCGiUdKGg2otAXzuMeBoJDKwhadM1MnadTP0ucneKq/Fe249atW7fmX3Vi44Ed2
	o/4VbU+RIehFa98C5PJQD495tGNmhigZtuNfXUmANEJBwpxgnJqnHDGxIhU2FwhVZ2g
	tDwfqx5ArfhQcp2jnDCFUiN9uEw2cSrYtebDBHYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649931478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QlH7TQAS8v2AOJGxwx+b85+RniStBx5oR0CLs8rhqoo=;
	b=iR/r7NrhPxyEcQeeBJLKNzkgIvJBc2inRlt+x6/hw98CfGmJ+OxSda+eMM2Oze4w
	iINHuzMB4E7/FyuJhVnwlrumPrx4C0cMckgYDvGAn+8pwJXZ0lC20bjle3BA9RqQ6jX
	3nmhQPnPfoHKvoVse2OM+cyquIs4RMbxLCr0+i8k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018027946511-ffa9d4a6-29fa-4e8e-ac24-381b4faa1e63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e0ed23e27407fc8f2041226fbb7794b5c0f9984a0a37acbbe0e8a1c4c6515a4
Date: Thu, 14 Apr 2022 10:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649931478
