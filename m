Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81C2023CE
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 17:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645810585;
	h=To:Subject:From:Message-Id:Date;
	bh=fG08w1cXGkVo6mmH67s4XwPJbbhFieHxVOeOMfxavOg=;
	b=l3pRGF5jUsWuGT8d0+7db7eRxhV3IJbz0/rCWHyFsyjxmCVlMhdvZY81UYCiPAJJ
	vNVwGXzTcUX7rEhit+0k86LEL3wxRGBF968VYNL+MyOVJOJ446uBJpPPh04Odhjobpf
	7SW63k0mmFIlJAqymqy3eD0F3IF/rV6BPTDWVU3E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645810585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fG08w1cXGkVo6mmH67s4XwPJbbhFieHxVOeOMfxavOg=;
	b=ZK4k641oXdVePpoWMjV1peE0FUiqpGH9rQsrHhSHKek7kYVj6+6/noa7ZIbEaFOn
	t1aEk0VeO255L6L9a17DwKfE1ZXDlCxdnapJt0seJ/Gey+MPeKwv6MinR7xT9eAXGPQ
	WovlkIDes2kL2qk61lBeJh/VT3O7twooFtLU0DtE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f31f48d09-9ff782ff-e1c5-4233-bf62-91a017eaa890-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03cd4eabb26bc4bc7e3b5f38da0acf39200ea9ae552aef7a0c1d0cdf576b8916
Date: Fri, 25 Feb 2022 17:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645810584
