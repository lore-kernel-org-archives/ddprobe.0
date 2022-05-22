Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A36819B
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 04:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653194399;
	h=To:Subject:From:Message-Id:Date;
	bh=FPD0odNg3DEVvWIAE6iU8bsy+/VdD+VaAAJJCVCMrJk=;
	b=MOjvkki2zGQIVC+eCIXiu5TQjbYyZ8Sypi6W9gVwLK9QfVZpbweYIpICMFaVff8F
	dQPIikFWms4hyYwMA0WDxF96VNRkuzkUkIOyoup6Gj60bIYyvkJPR3bRTFwFpWkeue2
	ANpiNdGDD9iarbOQ8kFZrIfbl4CqVjrViOzUn1ns=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653194399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FPD0odNg3DEVvWIAE6iU8bsy+/VdD+VaAAJJCVCMrJk=;
	b=CRaJgV7bVlq+0Xe36+8l+JGI4QArx+9ia7KvrvwdpFD0dfqPQTRbzy7272xPZTgN
	B7RFIl/zdxwvDCUuAo7HTtH2rfwrSfAoP/Tzk9sA8msVg29Z1I+WVlDcMGK0eP3H94S
	HXgIN+Gbwnl+ns+1/7YiLe5lsI6AGdVA92r6ZTuU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ea109e51-e1b24403-7414-4ef1-b845-c98d0feb3ffd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19a750b5571a0f21944bdc9553800c5d62be1839d18e4053784e6aa73027a60a
Date: Sun, 22 May 2022 04:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653194399
