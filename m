Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA7197A
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 09:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645780285;
	h=To:Subject:From:Message-Id:Date;
	bh=Cr7AdkTceb9m1+Qc86AgIyf+q7Af3Qi7U2YeYMoQE/4=;
	b=DZdyYYpvuc/vLsbubaiByGeAV6dctMaWxqRlYxftvSF2C7S7ccXcBldAMsU7XPqC
	HbIn2NZveoaGWIU8n72o2YdxiSPuwVY6lSs7OwwVU52Mx/d3tMgASTmKX6lLrtSOGsq
	dOp9p5YMICwyK406pz3YmU1Xr+LxAYZXdllSSQdE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645780285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cr7AdkTceb9m1+Qc86AgIyf+q7Af3Qi7U2YeYMoQE/4=;
	b=LotW6SK6sXUo0znNlhTNEQzMyBNwGCPc9TPrEJu4y2dG5fGrSOOK/uORGGqrddis
	nezjNJdlwN0jHEP7RpeYWtmbK1z3v9wsqdHB1I1SfFfKi9/XTXx38Q7B3vep0584YQ6
	5uL0+69JORtPKedjJm/r26j6VefOpSMTaR8acKcc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f30263548-449da4bd-9816-4225-bf7d-0cd361dcca0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6193b85110914178daf2cab0c12f61e017190d152735febdba2ac009158d9484
Date: Fri, 25 Feb 2022 09:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645780284
