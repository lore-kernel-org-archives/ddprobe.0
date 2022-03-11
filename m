Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD1A5CC6
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 19:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647027985;
	h=To:Subject:From:Message-Id:Date;
	bh=2HSRZwUe5qtWlTv4Ekc4Q/LC+t1ZHbUniIluGKi/A2Q=;
	b=TnF+iWOwkb7PCOpLEqhxO9gLWJARqcPnqdEd0vCPDmst0dcTLsJuhk2xaycPlneH
	vupaBl4GjNmn6E1cPoqo4FHFaCGTDmL3cB75tELsD7yPO3E+iZaFP2NgKP5YWoQfskB
	L30ZcG8guyM338jOeq2Ao/p5kk1dU9Ic0wThJCVg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647027985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2HSRZwUe5qtWlTv4Ekc4Q/LC+t1ZHbUniIluGKi/A2Q=;
	b=QlPWgQUSZuqkcxOkc2RncpV5SL/m+9wXSza4B6mBFXgUl24dwszmDwHG+Wlk5foq
	910Dahoksvnuhe/+ueKpR471CoBYoHNYYWhDXTU7wJ1ro68DcHnqPUe5YtAwPPGXsV/
	4o8U29vNnD0VBS3Xu47ut6z9tdUP5nRleVX6va7I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7a8499c7-04b60808-a900-458b-bfe4-1549381b5c22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 021d3d6b4d00c72bed588e121470978009af6a4e0169bb7fb973f12d82f10a9c
Date: Fri, 11 Mar 2022 19:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647027984
