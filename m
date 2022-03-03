Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F2C336A
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 03:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646277985;
	h=To:Subject:From:Message-Id:Date;
	bh=SHB3ryJg2W+KXDLcgCn54zAJiPPdgOIThLVfcPknN2U=;
	b=eagqYOWoZ0137k86dTly4q0W3Ag+1DrssfwOd96YtsP7mBKjvoeT2C7Kpy9jKYEx
	JAMYIMTDiPl/bpo/8EnMlOSi9q1g9q0kSqcY5+KXZ2OVkJiQtVz30yFv63jSdI5gs+p
	+20VmK7gYL+EQRGYcoFPOmNFvWutMIFiTMIql7qo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646277985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SHB3ryJg2W+KXDLcgCn54zAJiPPdgOIThLVfcPknN2U=;
	b=Qg50hxULB6O8D2SBxwxHBRGfEPwRilMzS6W9/qulZ1Gbk/VuN7cOfs9HdvXSfc1U
	ofgCwBkh2eDFgwT4qqD+m+g+9Ql9567iyzBVdkKIV8vIIbDTMr7ghFoPepguLhEVjXQ
	wqLrDm4KXkOCfCo4jvFj8lqEbqWofLQBFMYWLOqc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4dd0821a-ec48e00e-3f98-4c11-b7c9-50a8b44bfc18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7fad01b2d288933c6ff581d838d568ebd77d861d7cc70903979005c4feeee240
Date: Thu, 3 Mar 2022 03:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646277984
