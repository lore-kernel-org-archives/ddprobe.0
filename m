Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 929603D94
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 14:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645106485;
	h=To:Subject:From:Message-Id:Date;
	bh=ruh5Xfp4EgEXqwBOIliGX4Tne7lc9E6GIlHVvfnc0uY=;
	b=MmoSGR69ftJnXsHf2+sIdCKhpkVP3wJ0oWADwxXocb8kRrTwPy0z/4gGWybmHgXy
	ciSdmQ89HscalM35LjL/kqtIc2FYqUWiHWkxuXRuBy95g7X0MNlE+zsMxHNBUnHezL+
	5teoamQloc0WR7NCgASj2lL9mR7y4rs5Nsj6AaCs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645106485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ruh5Xfp4EgEXqwBOIliGX4Tne7lc9E6GIlHVvfnc0uY=;
	b=eeinw2y3eO2feqcYAoBe8zt/u1Oa9LKTNOkWfDWw8p7nANmxzdB18azmSZeIBtsm
	B4/r6hbAQhhwAGUPXpXM4MbxYSkv96srV62drCnWP+uMLRcXuOvR6WXGesIcnyh1lbt
	Cke14Q/bY/TI1efc7dixeQqbdv6OA57LX63Q/qpo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f07fcd682-b5663b22-7b6c-491c-930b-8c5e5b75b692-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9061b562be9375769d5f63a712dc649486ab78fd871b5be9070805bed6145939
Date: Thu, 17 Feb 2022 14:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645106484
