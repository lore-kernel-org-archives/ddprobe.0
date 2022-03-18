Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 790965115
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647634284;
	h=To:Subject:From:Message-Id:Date;
	bh=3USEwki0WUFKM+sQmgsuLU4lgbcRL3q/d3wDEVOFF1g=;
	b=hOo1dre5wAeBQs9nQq3oXGp265uEccc9QlMQgsjgr6tNVdtBN9mn1ZrozAtex9UT
	nMSTioSrF5zAeWCKv0zvStArdbNvl88kwAhGi7u1GdSRtxElQAKFp5PJZY1yLzp5DPw
	b5BeDU9KHV2VFOC9ChJN58Q3bIpk5xdPbHxV42I4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647634284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3USEwki0WUFKM+sQmgsuLU4lgbcRL3q/d3wDEVOFF1g=;
	b=ar9qRWaHBWm1f5XPtHG+zoruAY9ZlPORclEis8Oxfe1B8t8YlvGp4zEpzu5HTfEV
	pfTljtTsJ9fanPREe8+GCbHM8Q7sjLNMO6HXPuTAJsQenMUAl94lxE+NhrTfuN3VbcK
	gzcB7mB1JbdHRaCExFN4jAG5hGpzYCefaCu9wdaQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9ea80082-b2e52563-e0e9-40a3-aa4a-6d28a1e9af4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f5d0ca22a5c7adfb345e9ff5bae5cfa57b9a55057bef0428513c40b7c035d2a
Date: Fri, 18 Mar 2022 20:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647634284
