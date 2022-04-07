Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DFD20E9
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 05:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649308378;
	h=To:Subject:From:Message-Id:Date;
	bh=bAn3zazCDp66nNhnOW4eYdMT5AXij7WYwlwOQmHsMa4=;
	b=ILU3qS5FnSrKbKH/dsnqt8d9sIDJ8OM42gyn/RsLMorUdhQ/0NdH/lCPJNOlgNdf
	ckag94LkJtrgWh/0yB/86VNkp8aWCX9GDCiWAfLkg0m80tAMA7pdUW0QoitbDLWMM28
	3SYmyRG9Wz7pnwlkj3sljq2ZFE0OtaGAmVLYqOzI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649308378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bAn3zazCDp66nNhnOW4eYdMT5AXij7WYwlwOQmHsMa4=;
	b=XgYFC6U8n91ctBf2P51AA3VJIvq27dzuWZcSaUP6OhYFu6tPWL1pv4f2grbJ6rr7
	PWUAalLwicDpueBbkqWdWd6l6EKBBz2KZyNTSVS0yTCAsBqOR5rwYujiPr10DmGm/mV
	i+uvqg0G0coZoBHUVKOA2O3k4oT2mImJXlIJLEPE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800270a4df-8b6c7e68-df31-4d8d-8f6c-a7a21f57b326-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ac245f2d39544cbae05ac5e9a48a4369f9473abdade67f290b394de7d99925a
Date: Thu, 7 Apr 2022 05:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649308378
