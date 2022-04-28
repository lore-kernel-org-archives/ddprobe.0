Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270CEEC5
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 18:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651170778;
	h=To:Subject:From:Message-Id:Date;
	bh=lTrJRKH1RYre3RYMW+KXXoKNqfPcnwG4b7iu4gCXd0s=;
	b=lDcjsvj+cXpcLWY8iPXac/t90yTs9uj//NGtVcQu+U2KPabAYD//IXXLs5eyNDbU
	VuX5u9gixzTEaiNm3h6XX9LLNq32tl1+Srow8pElKi0UvDl3YXcsRVwKAgfbG9AOuJL
	q8ojvD0Y5GWWBJ+WH0X4P+q8u6GxLh7qr8QyJDQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651170778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lTrJRKH1RYre3RYMW+KXXoKNqfPcnwG4b7iu4gCXd0s=;
	b=KhhZoKIfvN8tg5TkWy4bSA4Aerf8RlqygCrSQKORhZafBlCCc43LwhxpursU6/xj
	n7sbZc/oVPf2254x9SOGNTK+ljwQpcNrIT61emIgMlWU2wbqn4wz6LQDHVkqYbHIhE9
	maQ94R3O4Obc2q5SGwJ3WKfJTM/hjalTSlhzvvT4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018071729cb4-aedf5840-4b86-448e-93ea-b54baceba0c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f597fbf2978d5449afd9257a689c1932c3957f1aa0d82b7d53ced0e2d9d54984
Date: Thu, 28 Apr 2022 18:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651170778
