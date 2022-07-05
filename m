Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060B36027
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 22:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657059412;
	h=To:Subject:From:Message-Id:Date;
	bh=8EBZKfk+qBLodvt/SAVcdrqji3RMVw9z8Rbg0a6KjJ0=;
	b=Pc1+/4jqNRvDaQV06sWlDnIXL+/0KsWb3RIbILPyVrvYawFgeBWBBdF+JQn57ID4
	O1m3M/rZMRZGC5SuetKTTEHLx+QcEhkJJVGMh6CMeGIYtfZW42cWETT1NStZgbIIhUN
	odvIc0hDPYm2KQ0tYNopGy93bzfd7oS/DE5qyXkY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657059412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8EBZKfk+qBLodvt/SAVcdrqji3RMVw9z8Rbg0a6KjJ0=;
	b=YpN0LzBqutRAhI7E49RQdX1ZhsV7ytrB24PIkVB0VRwZjqSLzJ2LOdYxCk3JF3Y9
	NFMovcar4UrNasm5ZjG83O0/2pmyZ828IFne61MA4gAGqM8g/ort58dfaw9toKrJ/8P
	91lJwoe4LN+7lpCrWS3nyHznp5TWtl4u/mjpfehw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d0700945-39cd28ae-4f90-4b38-8f67-41453f6545b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c94740c225845b7d2deb2283044d3ca7472dbca537900933a9e57088de61b00f
Date: Tue, 5 Jul 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657059412
