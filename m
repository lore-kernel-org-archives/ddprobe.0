Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B898F7E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660553452;
	h=To:Subject:From:Message-Id:Date;
	bh=kCmwXI0fUUEUB0FTpJSRquU5IvnPyHBrymKItVaES60=;
	b=TDZm75TSpeX1N34d7oyoF3pUezRrzmohcgaPSdaAP6NcPGiYon+NoBbdTWUSFr32
	5X89o5no+naaNNNuRcpSKEk39Z7zam9vdPndJpBSYuVz05ZNtQfhL5DMCiCCD9DeIj9
	943iC11ebxfX3W9vrfroiJNe74MYrEhb6+JU+ybM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660553452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kCmwXI0fUUEUB0FTpJSRquU5IvnPyHBrymKItVaES60=;
	b=IKwid0Y3vc7Qjd9/1TcAjfolxCxv6zNd/ZafkpOZqNRGD6J4/vz6AvmPPfeR5w2i
	L7b3UKxrgO6PIXzTQ/BXxeamWn4IdOl2jX1eWGSN1Wd1O4E7IuMiieP5A4oPfB3PLtL
	bNctPFng8346KU4c5g9ubor9sj8a6QEBRafXZ7ek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a0b2dca0-711ebd88-d919-466d-8c2c-d4177b63915e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 330d7755b29f3dcc7ac28bed7e7454f8e6aeea0a864425631be84dedc9de5a38
Date: Mon, 15 Aug 2022 08:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660553452
