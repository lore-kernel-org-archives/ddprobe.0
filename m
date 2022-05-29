Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429FA2917
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 17:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653845219;
	h=To:Subject:From:Message-Id:Date;
	bh=Kgow8ov0KSRV+tqQZCNWDvWqaIRrIxMA22akUjyS1vk=;
	b=ImJf50tyXBzWCl+FqvFgTz5ddo83DoWEDiLdCCx8r9mdgpb5M1E13GY5fdTv4u8m
	jT/wUaj9jSahVKM67a6F+w9F45YxzehVBuoQmvg3nJHR358WbZxlEounLfJ+ewdF8/l
	Kn/V/9OT25WbacfB12MStfNgw2/U9JnCfO5CryEA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653845219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kgow8ov0KSRV+tqQZCNWDvWqaIRrIxMA22akUjyS1vk=;
	b=ZBmaHgCdOtrNSChz7u7f9d7y6N21nVd2Ig8/HEH3DRFDsxAfNJeTKhexSdHMDnXX
	qRhiGNZyUDFMAL/lil2YJPG1hDphDce7a+yfnUsyMFwmK0PJ80lJTIidbX5E1s4eWFI
	Rh3aW/Rog2pDK+/Y8TZW5kfBujmPy2ZGFSvilYVc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018110db57c5-674ba44a-caba-4504-9472-62599aafac93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cf188f5f9f9625743e06e72e4fe2b3cec5c02cecec21ac5dc03ec9305a18965
Date: Sun, 29 May 2022 17:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653845219
