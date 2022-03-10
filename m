Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 912C27A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 13:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646918485;
	h=To:Subject:From:Message-Id:Date;
	bh=O3h+EKzJ/zvPgK3wHvUQhAGJim24hRJxBJlbGuHXte4=;
	b=RqNkEEh/Iz5TvCt54LfXV/NLrUHNDfE/13ksM+wlYs7B4aQB48TgnLBAvLofveCN
	dw91hn8Av6+MLZ2UUklq+Smib27EeZfKceDgd5iPPpd0XnzPo12MQPGYMwFjwbhLZLj
	4SwhGoP6wuzMkj+VK5TuJDyQWNBsbXICsJ9YAbnE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646918485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O3h+EKzJ/zvPgK3wHvUQhAGJim24hRJxBJlbGuHXte4=;
	b=CJjVoSsxhB88wI/fRlnOYLVLO94K8KO8hPPSzQUoMuggujwtWsszVj7zZSuqK70E
	xFL9DUeyxW2OBB3LteWGEniqt0A9WkihNtLp3S0AjTAD3wKFzc33jGXcNDyAtOvO6Hu
	Gz6jbf6sV6z+d1m9MCK2pXgvtdzUNac+ySQGME1s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f73fdc315-7709c76b-4627-461c-b557-cb1ec04e655b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be4d09e86b0124450c16ab8cefc0df7a08e5bbebc2d64a21807ee356a4c5b172
Date: Thu, 10 Mar 2022 13:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646918484
