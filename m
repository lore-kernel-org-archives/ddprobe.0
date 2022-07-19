Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA404C75
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 21:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658264812;
	h=To:Subject:From:Message-Id:Date;
	bh=IfUp8rcC+syTu+2hIGsDIkPD2jui6OCjDlFcnCCZZp8=;
	b=P2mYRWJ5s3NtuKJG+st2Is/91vaSJh50RtlfuqyJo+RULKEMPyEtM78CrBIJ7yxP
	j9MTEShqBNnM7ulHsCHy+cyEC8/q9fZvuUjMQ7D2CY8c/KMxrt0fGlfeHWbdp7zF/HB
	VWEtwT83hEHiJg07pqINTW0IyM6oBotpp8Yvs3OY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658264812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IfUp8rcC+syTu+2hIGsDIkPD2jui6OCjDlFcnCCZZp8=;
	b=i+zVJoKuVupqUP/qGJpGpJlw1K+w3GKMJHgHy8k9AIl4yuAXCq3L4rKyjGMHDtGg
	sA0XO2GSmQUUSIVlAXiYOlgeXG7Hkqbzekk3/wLIm90Luhlvdkz2Oy7yrfEr06cA86J
	PbAX9U9vm0FNjK7WvmG6fs4rqAERvwXsSMZ5dc4k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821848fae5-df364e28-d373-4182-822e-c35a4587f3b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b151dd8099e8b9cb14c53c40ce470588b6b70c9c86fb9e555c32253d745b4ef
Date: Tue, 19 Jul 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658264812
