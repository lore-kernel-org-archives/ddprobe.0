Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123CB7C
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 16:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657210012;
	h=To:Subject:From:Message-Id:Date;
	bh=/RG3oszMoGB4WFWKjUxNZuP7QpXo2JtHXa0cpVSAQUA=;
	b=IIcb3nlxArcDXTGOPnhdxQyrHhQH3bKlppjz1hSedjTegAXvW+3bvuZC8WkQbgSy
	NdJfKHIpiwGLAowgkqZhuA3zYn6IWJWazGW7MzkARFxNTNexJKdJciXuoaLXgl3JZfd
	PKp5oEJHjghTTjwhYCka/ffHCfCtNHiyTKABz+SA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657210012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/RG3oszMoGB4WFWKjUxNZuP7QpXo2JtHXa0cpVSAQUA=;
	b=Mdu0C2zPRi/w7Z8DXYY6Dd/fij+a8zFBtN15NBo4/pAEDt01NtoX5WLj2u1ShNvg
	ipfGcD4cm6k+CyoMYbmPgVP073YD1tpasF7MfY2FDV45uTIXuBPt3hVtyxgi2BGNS/2
	/nwYJKXq4UsJTHR8CRzJAT8/7eireaFCPBSCfYls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d96a027f-7372e9f3-59a6-413f-8516-f3e527aff304-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15facac50ef1448dd6888f365580d27606ef67a73488091f9a398125dce76d74
Date: Thu, 7 Jul 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657210012
