Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77FDF7B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 07:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651216498;
	h=To:Subject:From:Message-Id:Date;
	bh=lLvROI5trgNuLdIz0M0bWwOteE8gwSV0mJ8jXm6QmSg=;
	b=O94oj0TR8BjvGECgwTE8KzzBU7kO86IOCoori1BEJyPt16gr8R+W+fG8p0CHgLy2
	sBXKsFyvc0pychZcKHuDNYAQV6IicNvatxsslhpuqx9W7FAdQTvRqKHglhM05eeZ1hO
	vCQa0XXw92M765C/APrGyEFZT4rtw8nv6tEWc1Ao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651216498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lLvROI5trgNuLdIz0M0bWwOteE8gwSV0mJ8jXm6QmSg=;
	b=Fbrda1c4soMOP00mT4mXWSkWiJ6F59u9MuLvzHBgkADOg42R6xwcEN8Vq35s7D3A
	8nIYCtOoS3xpx+r9eohP5H59UvA0aDE3G5bCoxZ5G96FZocVxAikkS558jzTpeOPrVE
	+0/Kw7UHA9NSoZ3SDf0/Fut4Em6yp/CtL4RP3mog=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180742c3e59-9051db1e-6d83-41dd-bad1-50dfcd57168e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27b2024bead35b3a7d35ca1238aca4da5314e2f1348ad6eca5bedde7ddbe25e0
Date: Fri, 29 Apr 2022 07:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651216498
