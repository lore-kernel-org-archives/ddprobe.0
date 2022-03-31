Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312CC7F6
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 09:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648720378;
	h=To:Subject:From:Message-Id:Date;
	bh=MsNYhg78A8YBrdzwmKwyN/MH2YvUsKy5tATNB4iq5Qg=;
	b=OZAoDYmCTzgzAeBAyY1SZFFeulVDgcUs/wYhR97qYOT2d6ByxluiF78kGafZ7I3k
	cpQkkQhXYn/glM/gguySij/lk50mIs6wQb90Uw5ifq63lbh3RF5g2xsN2D7vagd+Ac8
	sYQJyjP1MMM+ZgtVeOOQ7PapZstXUPs5uAz/ixeU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648720378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MsNYhg78A8YBrdzwmKwyN/MH2YvUsKy5tATNB4iq5Qg=;
	b=DUlSyXOtc75wBBYx2reCYyHa5ITjq/ylAyeuFupo0Oc3qDhjdKf5G/a8JEfoGu57
	VIgo6PO+xt3Wv10dgHkY4rU39dM1Tsrvx0rl2Y+lMbb8dRAvnjl3mTJQmNHf9Vkyi8x
	+Dl6cpcVC1ZQWmw5Wbm6736U0kWT0iZO+aZtqrFE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdf647984-8e82d26d-4875-4b20-ac04-82890af7875a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 727c7380dfc4c413cef95d5fb4196dcd04f70f67f69a89b46467a91ddca64b2c
Date: Thu, 31 Mar 2022 09:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648720378
