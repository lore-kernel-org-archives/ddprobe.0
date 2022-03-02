Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99EE95ED6
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 20:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646251585;
	h=To:Subject:From:Message-Id:Date;
	bh=Ks3N+VmCl3iCZE8xmwxhfYvyIZhbrorBWadieMgJn2Q=;
	b=hdV23Ss4bK+9BTs+FEauEOzFsTqIA6hOxevlZOfFqQwQX+Ghit5hSlk1nFJELtzH
	tUNdcHcEXeP6oOz8mbdxfgevPSKekiPLcd0Yalz+hU1+5/oYK+LjtQaQIgum9wpoFL7
	trCTQ2ooZkYt4WThiZKPu9kwutBGIZUexdWyoVkA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646251585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ks3N+VmCl3iCZE8xmwxhfYvyIZhbrorBWadieMgJn2Q=;
	b=CLwwkUD+eUoNm1vMDEbGF7xsOXyjPlsCFSdDGE+lYdPqpWlMEV73TLBpohfXaWMN
	JuwFo+8T4Bch4mK3siNiS9exB9tib9pBCr8B7t8XVgkOkCsHyRapIbYLEUOmLvoO0sr
	uPVm5BInbvisunoS1jQJVmtS2c1xzPgqLVkCdlSg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4c3dad34-7ff35bb4-457b-4ce9-84fe-f6cf153cfa6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a2442983aa5f060332eb2fa488a566a387175ae46d3197077c3424b0e4ce9a3
Date: Wed, 2 Mar 2022 20:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646251584
