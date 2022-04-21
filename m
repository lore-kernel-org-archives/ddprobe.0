Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EB37A
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 05:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650518758;
	h=To:Subject:From:Message-Id:Date;
	bh=pCspL9+VlKabWPfaKwQlzg0XNpfigReqnnv2E7Bnhjs=;
	b=ZdJ8c+VsofHc8uz7/v+x4gp7DRqQQitTTRq2SW+IIBSpwuLM/TicnB3j2KK/E/Np
	JyPhmAjbAruySBNcCnCVmdqOm6SZh5EH8i/qS0tv2wYhM+RLb881ltKH8v6LrcsEH8F
	Gr4+Wzj4lOVZWNdV6s8jSlGdrKWYCWvNIgajU0Qk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650518758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pCspL9+VlKabWPfaKwQlzg0XNpfigReqnnv2E7Bnhjs=;
	b=cmi2p5ccKMGr+fTZZrzv+sqIbF+nCMIbY77337psgEm6glj3IYzKJB9q4W2YgLYo
	JXglMKumcuglzmD+TnRaXxVukocSpZLq6AcrxPZ6RX3juuUpeNKVF1fiyjnxDdqJSIR
	MSl2BafcMZW0rtTNZT/Bx06ANlHn8aNEiMPNPXTc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804a9593d2-d10d3047-6ee5-44b7-b4fe-c2188f8632a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63c3ec27fd0fbc82aec932de02b789eb8e6bb875dd0ba92df3f978f2a81b0137
Date: Thu, 21 Apr 2022 05:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650518758
