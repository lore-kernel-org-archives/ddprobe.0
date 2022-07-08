Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E68913D89
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 21:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657317412;
	h=To:Subject:From:Message-Id:Date;
	bh=kNxLUJu9qW4lnmoJq2CNEm1N/VKHa8zolNuQAKPJi1Y=;
	b=BQR3N+dlcmPDIu9craVgyxhaNAqFKe401lmHz8K9edTnXwLvGpuHbxESBLf0I+1i
	hm/2SBQR8oALJypk28JKEayC/Fjy1+dgbI3gssRxmxkTr8mRCYz6+QUUBOb1WurEs0q
	5K2xdJkcPGlqObf/IlgO2c+f9sdFP9RvzZeerpK4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657317412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kNxLUJu9qW4lnmoJq2CNEm1N/VKHa8zolNuQAKPJi1Y=;
	b=MLdlwBj2GDmruE3zShepn15u+8EztsAEdyIosCuxeIXQcbfiH4IdtlfugERArbnS
	V/AXjWFwi6CEcOeikRwBT4GwN7i5aLlbrFuKstxuAm1mkLRK1GALmjkHk5dgeRXv7nu
	7sf8aonlDwQjzT8DSvftgaV4wvOAV8Lak9vN2b+c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dfd0cda7-dfca8508-edd9-4927-8dd6-2023304ace35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8783500780372b77b3ce1a5a925bc011a878c21a5ce9fc41ab82f3e962440a4e
Date: Fri, 8 Jul 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657317412
