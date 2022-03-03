Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8005136B
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646268985;
	h=To:Subject:From:Message-Id:Date;
	bh=zrhH26PCgJurtZzZ8b5Ifhr1bBMG8SlQTX0fizx7qtA=;
	b=bvd1gAMOtZBSeIvbNW/xtzGjrczqMo3zCKwXjKKEdA4G8TSJO1A5nwO0SKkPT6gG
	m9SjrEHVFf1Le6dyKIjpdJL3lLfeWBQ0o1/e9gGiEgKD0ajOPvdC2mxT+K3qjLnkQC3
	vUpCpa8/Jk8TXv2OGIHihE0wa3SlewLqLlTj5INk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646268985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zrhH26PCgJurtZzZ8b5Ifhr1bBMG8SlQTX0fizx7qtA=;
	b=XHlYQ1lqn+Mk9esW6oUsu6n137h9FCaBI6idxIodiU8i7cUumH4ilNqW7XGAQ5bH
	OcfetjD9UtIz5/qAPnkmiXhN568Nk9gMyqHnACG9UTARAxiSCShwY9afXqFq1sAKj8z
	uAJ/7QNAn+bCWEkQmVAEocT45DsLo6OmqihPSuLU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4d472e22-0651c553-aeba-45dd-b5e2-03474e67775f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 063462042939de84a4d84f33324e6f2782bc8ae856588fde750a2086eca6514d
Date: Thu, 3 Mar 2022 00:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646268984
