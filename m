Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDFD47A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 08:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655368859;
	h=To:Subject:From:Message-Id:Date;
	bh=kXb5zAAO3G4q4jFCRqiLPiy16Fw+p74Qo9Gd5PCzBHM=;
	b=RaKjomX+pl7K2W9kdL57PfQMueuqsUtN36lhPof65wSWbZafituKHyNeFMSpH/QZ
	3NL7vSygizVFjGoh63WPkSCXCcnYWKoTpGwyI4BVM6UlzE0fJocMiWW3yAZHrZ4zHCn
	zXGZzfhbI2yd1iTUkY6yRXaPFdwJkqLt6yD7EAKY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655368859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kXb5zAAO3G4q4jFCRqiLPiy16Fw+p74Qo9Gd5PCzBHM=;
	b=LAix5FmqOO1Jrb/ZHexBSCMaQ1FWs7AuBGymKgA0zAnWxNUWy14pPX74cU/bON/P
	ZAAWPZOSin7ZEK83O0tWwBk9BqrjMuXOPJ82vSbCL6BVGI7opBbgWyQMR6kDPMSrIQ6
	JQAeZc/DV0nExCPK5sWHoukwiFwAeP6PKU5TgJXA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816bac3e61-2adbfb5f-5ec7-46a5-bf71-87454a42e1dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61578eabb63f7dcbda8874519c10c5f8c4e8446be5d5f07e5888f2925178c418
Date: Thu, 16 Jun 2022 08:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655368859
