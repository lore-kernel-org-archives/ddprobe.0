Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4545048B7
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 10:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647600684;
	h=To:Subject:From:Message-Id:Date;
	bh=3oQHipVW8H7UXepYb4OS18/t2M8IARk+EqiIlsCvGuU=;
	b=cmgURSiYRMfeMFH/pqGlzlPWP9808dPoczkp/StFg3G8yMhdGZ+cypPVnHdmVYOf
	T6xYXW+TNTlLQsB1u9vJx0YwA+hecyYCqGsStXho/peRNsj84Fhcc2Ogt1DiiARh2oC
	TDrM/7t+3fvxde3+uzRrySR8MCmmjgJWM0IwxPOY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647600684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3oQHipVW8H7UXepYb4OS18/t2M8IARk+EqiIlsCvGuU=;
	b=U+pxFQlvYhCtc1W2dxM4VJ4p/2WkLHiPjYIQgjW+0aqSp41baI+lwJH99FC60OfL
	OfvsvfXfe0TuUS+WDYsnrUYS/N5plX70+Cm0sODCYEUhgXqPJ1rEL+Nu/Gjd/muCuoq
	IeSwjIQHJx0P1ku2P/rTZ5k0n4rQVAA3txYAeDo0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9ca74eb6-ffc89d73-3e85-4a13-bb4c-b1c40295eece-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2353ca67d3ba97597379b3cf91107bd2a0e7eafd9976dd0a3f3b5869281e2616
Date: Fri, 18 Mar 2022 10:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647600684
