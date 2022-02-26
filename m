Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6989F38EF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 10:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645870584;
	h=To:Subject:From:Message-Id:Date;
	bh=PFPaL0mIbGvSB/OnGNSOp+xLyw9kHPoI16RyfmTLWTg=;
	b=EGCnyW9NMGX27guYnymeo+lAdE4mKWyTb3kxBMMnUpnwTp7OdFQwLGUOPYX7eGdg
	hvSiAqErj9rHwHMhhyyUHG6TQgpPxVSTQeKW77l9f92G8NN0oWyh+Rk7NzDnWtOhlVv
	adlQu8ZGf0iMXUAC1Iaimy2gbe00KdxdFkS3WF5w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645870584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PFPaL0mIbGvSB/OnGNSOp+xLyw9kHPoI16RyfmTLWTg=;
	b=Bnxsm+3lvaMXqc/LKVIxzCipmjMWFGh4OkDmQZo/GNwavO+VVht/rOzcEmjJNuD9
	Q3GHqV2zP+/G9fY8P0DY54pw1YpmRwnE1CynnWN5G1Aipc2o2LQhj5BQtcp7kGaJe7+
	ZML7a+cO/y8RUMRcpZ3RRtyPLlPOCCv4HCZB1Ug4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3588139a-274d3fa6-ff45-4bad-8e70-743b8498bedc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e52fefc3a3ad269f5c524cb7fcf87342d00e3dd3615de247b064df3a6544ed46
Date: Sat, 26 Feb 2022 10:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645870584
