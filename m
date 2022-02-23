Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8187A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 23:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645659984;
	h=To:Subject:From:Message-Id:Date;
	bh=sLrzpkhvZ8iaepFY2Te+Mu4iIyp1rTw0qXzkmwg3DTE=;
	b=S6qqYZ9+ldKfrmx9UPAL1CcehXOndHauvLG3UCJsn10moX1c/vUpBqsi1mdrbLaY
	MqPeOf878TQ2iVwLMDHm8g2Ga14JfmKm5+1xgqWZHWhX8O6sMPdeO9RFopZLVsr5pN/
	eN9eHFeF4mcS1p3BPQoE+Jpj+wu4diVuCWL71pBg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645659984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sLrzpkhvZ8iaepFY2Te+Mu4iIyp1rTw0qXzkmwg3DTE=;
	b=Om1mdn5h16FreiW/6STDTzcVOoYzjOE95xqenxn/zZ+96xhtHcz2ETSLez1dv0xH
	hk/yXQaUw+qK298SZRamcoiZJn/GntYBb49L61pmzqqvuFRHikusXTCEwkc/qbpGAqW
	GdJ4r04B19INGq7SSbxS00VFggMCdMXB1c3yZNzY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f28fa93a8-cc7f1887-887d-4bb1-8815-7b3a7194a31c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7001e7ad09378ebb6635b7a533d6e35ffefda1bcc7f4dc0387301f2fda6d2dea
Date: Wed, 23 Feb 2022 23:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645659984
