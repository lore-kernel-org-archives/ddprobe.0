Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F1D2567
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 14:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650118378;
	h=To:Subject:From:Message-Id:Date;
	bh=39leAgdcg+OiLT/R6njGY+s/yV3CM09o7vKLJSHruSg=;
	b=R4gJ5b/3xcBPPM8e7fqkKdO+KZZ0zsdGcJK7soVMhNfOLKru+xtbKyzuj8JElHfZ
	YwBmE/3I3eR9p8tRb0MNzHGRnfM/MEMjDHsKZ2zOXltfpN1B2z8ChTeSYLqFofi1yeq
	8vud9qfrk3ZsW7KcquTr8p30DrgZN9QvaTvhNJQc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650118378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=39leAgdcg+OiLT/R6njGY+s/yV3CM09o7vKLJSHruSg=;
	b=YFbfb11WMy6ogHt8vMk53mgEduKE4TtwHHBp9NED2Ek9tGtSKb/m23+gNFibiYvA
	aOGwbQwg/Ik+FBjYppbw2T+jPu7ybYJqtiSHOcOCivlyuzbx9+pOAZ0kb9LFlXGXR9n
	TwZ/0LHDThZG/hSU4X4vfLbgoU499fnDe/xyAe4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018032b8434b-2dfaf3f0-a00d-4d09-886b-1bc22e6f1433-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc4fdccce43f9b5b52a615010e2c1a3e537e9d1daa07da0a6d32286752dd6114
Date: Sat, 16 Apr 2022 14:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650118378
