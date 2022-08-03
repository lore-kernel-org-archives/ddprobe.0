Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66FBB3211
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659554452;
	h=To:Subject:From:Message-Id:Date;
	bh=L/yZoIwbd2+JlZdgl6ygtiGZ0DEV+TUspGK9xuzn6DM=;
	b=UwM5opJa4grumJYmDdIIm3c1UODDssNC3LG6L5cchMu8tj56CCNo58UDXwlm1DcK
	Nov8RobGcusCp96lA8BOrMlXPNqNL/x7nBfg+HvbRaYSLSkljCUOIQtX51qv/8IWBF5
	L/SkK1TM0h20WRoUYCLDg4pRXMibTzUdv7kL0WG8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659554452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L/yZoIwbd2+JlZdgl6ygtiGZ0DEV+TUspGK9xuzn6DM=;
	b=DhnHgO9Nrbrs/pLaivNHR6PN1nV6woVws85MXSwsYrdy2qPyw0LG/Gah7NWHu40Z
	ZHG4l2V5LPz8gG1SVpKNijJZSMlFMzQfnMDWeKnw4W3Ej1GgvoHYl3jFepM6RS2v1DQ
	S0DZbe+8QQUxIO4K65sMKa1wqcey10s6R8WtS3wI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182652754e4-fa5d25bd-33a4-4baf-b05e-57a63a7b5927-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4dea3f35dc4a3e2c4d04fac69e710e13039c6853482055133ff7fa6ae914779
Date: Wed, 3 Aug 2022 19:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659554452
