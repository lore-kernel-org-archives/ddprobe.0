Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18404369
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 01:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651715038;
	h=To:Subject:From:Message-Id:Date;
	bh=1uMOb61VhLz6e7g4Kgfr6YfBlAZmDYAxKdWw/Sy/SJk=;
	b=PRJ2W1WL/t1SMSY0jL5wl6FGteUldmSVMKWtQhBeJYF08BRTTB+F5eQ56MKk30oC
	x9Bs/eeVUYDd8Ggs5LMW20ioHV0KZezTA6YTwYm6vRgVUYUDxsm2KJxyJGiYKcVyGIL
	vCVKRmynp+1vfp+OLg7hURZeZZYKCrRGE8xy1Sg8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651715038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1uMOb61VhLz6e7g4Kgfr6YfBlAZmDYAxKdWw/Sy/SJk=;
	b=idwYlLWcQdzUVG24yF3dnd/WSkTuebYdQ44O8Fl+3UI65AHUmvCGb4ruYtGI0nck
	nXYq0yS7fXMKZtceqcWz3NY+yW02GrfK8CfPBbLU10cUx+G2BXTcjic39LS0v2pWNlY
	pEtEro+IOqn8asTCFvHdUoSCZrSD+fQgIAblJ6gA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018091e35c3a-498550c2-2cef-4120-9a95-f578744c3ccb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b2414ae7057a05971f8bd010886ef877a1b3046934b298d642324690185139e
Date: Thu, 5 May 2022 01:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651715038
