Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 870073670
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 03:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645069285;
	h=To:Subject:From:Message-Id:Date;
	bh=B2XHXrSfvkp10RyUZgtunFx9lj5nzk/FH4UX0nyPXS0=;
	b=GLp1VLOSEA+AyYYks4mhTO0k3gHhwlac4ebOgRxLprRCMzJvil8Wnvaxgh30ZeyQ
	/37cYZZV6zgUw8Phk9pEIcFHrmb8xWKR0/L3iT4Q/LuEsKgo36PdOse2jv14tdb3fFQ
	bGvJoySod90znAZibApcWFAto5ZrEhlG/20N7YLA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645069285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B2XHXrSfvkp10RyUZgtunFx9lj5nzk/FH4UX0nyPXS0=;
	b=Z40gucOqDRtKus/xnfNswYILtL9XrXDhan/EMr6WhjqHslFcloFyaZD4rZad+ZmT
	r2uco6TdUt33l1Mhr0vkvgw0ZmqxCyAtNNyAMRgwQGVgdOrA2jZNnaZIb+3SwjCfjWM
	CM2naIv3zsW9bQ3tcq8ak/DZ8IIEKSMoUx7wVCOU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f05c5359b-5846ad22-8078-4e0a-b5fe-35c8a1066c64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a91b372f64e46b5d68681d19949973c5f2cde82e0caac2e25141ade1a511b3ca
Date: Thu, 17 Feb 2022 03:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645069284
