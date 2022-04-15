Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5BB7B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 16:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650040618;
	h=To:Subject:From:Message-Id:Date;
	bh=6DmmoQ+qke5VyfXQ+3vrgR97WuM4Aq4rTb5O4LG5Wzo=;
	b=ZdN2NN26Lis/ypXzqzLyhbxAbAcij+sO71/pChOoEziPKBbYTJlNuYDPzPoIqqY/
	5OEdGoiDjAqRWK0IGQ2Zp8mB23CD5bGFeV/DjaGVN1DcryIReUrw0ZM+mwaBMieU8Ei
	7L2g58lNs9xyNAFPssnsYZw4WyRKGs2HXQBpYGtE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650040618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6DmmoQ+qke5VyfXQ+3vrgR97WuM4Aq4rTb5O4LG5Wzo=;
	b=RZ7tmaYJ4+pJndEJ2kMqxVw38CdkCEfxND9f8EvUWxEOWshNFsBiBvtfANzv8vY2
	2psCbWZsB+wtC94iLO3Y+dVumYF3AKf2PQXG42ulJcwAsVE+kGolpxHhnOEs34JAqCh
	THm/U47+Ry1udwMfQ+E9UyvIbnzMAeSmQvxxdMwY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802e15bd25-807b438e-70fa-4280-85ce-05c4d4270ce9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e02502311f807de9880931dbd00564b5c152c6ec0e1df9754dfd9c870fd5f371
Date: Fri, 15 Apr 2022 16:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650040618
