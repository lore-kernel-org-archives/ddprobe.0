Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B47EA7C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 03:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644897385;
	h=To:Subject:From:Message-Id:Date;
	bh=GTKPgAlRk0yfgXrM30baK09N/aYLrrOzNuLpnEgHTSE=;
	b=lFVDqrYNKh1S8sHNYrdI08VLphAx1ry8RL81tVT3xF84f33NjRaWwcZLFjobBNU4
	9XkZjzxwSSYOI00nmbsbuSHKHW2eju7sW3WUB9jf0FgEnVqu9tgcqjQ+i6Ifb1+BzM0
	SewzFRTWGKKr3nXPrO1Q35A7Gg/wLwZSKnWU29w0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644897385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GTKPgAlRk0yfgXrM30baK09N/aYLrrOzNuLpnEgHTSE=;
	b=Gnk5EqFR4uOqi0ekCRNBHohuZg1GNLVMsdaRNz2tUYdDNUV0e2bXT5U/6gnNb3y1
	eqkJEjegF/M3HZjaOlm1xMNRZ1oNuBze3+TpA0t/7/+1JsmEuGrY+tb4KmNwr+sazLM
	Kwx/lRDJfrVkjHrscJ2LI/aoaCdDE36mrVVtYF2w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efb86391b-cec483b8-ff58-4a92-9340-5200cc34acbd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c06705fb23c5f373043741e04373159ea7892721627a1e915de47f5a6bccc20e
Date: Tue, 15 Feb 2022 03:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644897384
