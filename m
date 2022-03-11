Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC2557E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646975185;
	h=To:Subject:From:Message-Id:Date;
	bh=PINbBKzuUomC8feZGDQGQTyBc8BLBvG2ZdFGRWOXFOs=;
	b=ZLiyq2O4sYMlO70kZaB9lz7nibXywlIUUil292TJV+zjaq/vKTVQRCUFEQPCBXD9
	YWnP0HsbJCDMOgh9Q6qGCUa999aW+jlOn4RxmfMxk8Q/x306urjTKMKJPD8FYdNX02G
	+daWvD/8G5FNb5SJMPEY7KjI9QwiY6xjpy4tKY4Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646975185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PINbBKzuUomC8feZGDQGQTyBc8BLBvG2ZdFGRWOXFOs=;
	b=T2/4IgOhFG//tRxi3cuwFYF0q7prWfDPr7MgnxPPBHtNb6tklci9BLIh3bD8Bnwf
	PdClfkOOa7lCVBH266qBStUJEdiVzYEpDBtuVnc9WkeCTy9EMSL4tXmD3gFgKhaDara
	CkNzibpLMHikNFTGfp+vV6T9nD7LVE/Dd+7sbX6Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f775eef6a-0ce1c628-c41c-437d-8347-fc5f2ba3e5bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44d4f96f6100dbccc43d8a791f132130d57820fe574e6316ee02a524ea6786ba
Date: Fri, 11 Mar 2022 05:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646975184
