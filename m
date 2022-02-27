Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B84232F2B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 07:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645946785;
	h=To:Subject:From:Message-Id:Date;
	bh=uGgodn6/wy+yIdLi5VpA3DTsNIUsxzW56J128E6A9vA=;
	b=DJgOM+EAPrB4Hns0w/V9UEodIzkM+mL/IVm8z8M5SFhw1QUz6fgFXJEd3BfRfysk
	ShpZxvep2FQTEq/aR5QCxAC2hq3smZCxg1+/tK3fKjU3Nw5aH3PTaOv729s3i53CJM+
	ohG7AUmSec3SV122RoY0OhFsOBW9JXA8vFLpI4tY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645946785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uGgodn6/wy+yIdLi5VpA3DTsNIUsxzW56J128E6A9vA=;
	b=A9xkdJO3dlxsJTdEAupc0Yz1VS8eTTxxjktz0eKHJPZnfIqwJce3VTMMSyCGXNnc
	eHUAEu8muXwybfoZMF93IDkR0XoPQcCTUhmYwoMqycYP94K//ePVbqBTstuA8ijb9wF
	YvbA5Db03l4JMQlT/SyPsWmTdx/2kQA2UX+Fcp2Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a12cc2e-6f8e192b-6453-45c5-92aa-472e62b8441c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a47171ec67821532bc84a6f6fddb09dfb9afb0087f42bf694f33a8423aeb0f8
Date: Sun, 27 Feb 2022 07:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645946784
