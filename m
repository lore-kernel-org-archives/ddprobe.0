Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 005B646B3
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 10:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654424159;
	h=To:Subject:From:Message-Id:Date;
	bh=DjUwxN+8/LgDJ/2KcOwEdU2nc3VtGhNaHXjP4FNXDfs=;
	b=gGA0rxfFb1t+pLeRkc7gXqh81OMme+Tvv0VcqoNdWA3sinsB3mJ4Ifc2uJp41NMa
	j/GEwuMjGAlJG9gU2jzzMCV0Oxa1XyccRFHfQDt7Dsi+zqgRyJ1rP9l7atW77AP7mLO
	YF0cNw4mqtyCz1vcv8tiMg0GOAey7k26qePwgG64=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654424159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DjUwxN+8/LgDJ/2KcOwEdU2nc3VtGhNaHXjP4FNXDfs=;
	b=ddLUtko6tnlltu0jDOfvkgmPGC0wepykqNJneQVKYTZDCCbpF1wrjvUOTQPlc4ac
	bi7itgJ83wTnIrmjAIr1qbEFjFBG3Dzr6rN106dsS5ILH2vxAIbJhqhe5B+oWut8uN6
	G4WAtK4yu0VFhxKsQXVciF0XsDmq3pDzEXUNYRoI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181335d442b-ce783576-59df-4831-8f0a-f4ef75ab28d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9be92c4f9b5b382d5f2a49a95777711a5a63fd2ef235a8f89bff2f35f88b33c0
Date: Sun, 5 Jun 2022 10:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654424159
