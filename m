Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5F787B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 20:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645905984;
	h=To:Subject:From:Message-Id:Date;
	bh=WecAPrZB6QbTAbNqcZCiAMGLp18VCDKa6Szop8zM5vk=;
	b=Mlr2XPvrj0K3c7ekcnEJI4TzLDYZBhIqbThk+rl6ACmVhxvn8ZgzJEPYUm+6cXf/
	xjfisZD+72Cg6g0Fynyp8SqmAN/E4nGkWH+RWPYURO+ewcpfJGUZ8VURhwN7Fs9LGKp
	ucOQX8ponfdjy9dYE67ijvCqaT3ks7+yvnpwMO+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645905984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WecAPrZB6QbTAbNqcZCiAMGLp18VCDKa6Szop8zM5vk=;
	b=RtR0TVyJayucIVqizFAfed3jxA6i13oQkrQCbu1rOBVchdZL4NRcdOcL/X9rbBK9
	ogjWIWQ0/EqEYGb7Bxc/fKYxyzrcqXpE72XHEr6UQY4ANldWqD+yi+lN5HW57F/SHch
	6gmuxuVxvwgGuJlv8PJPq6yBdzc91+6izcaWr3aw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f37a43cfc-be9934e5-8813-48a7-a34d-62e97ad9d075-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44a7558a83429041255b34c4bed7fa63901a2f21891ab62916f5418d47554384
Date: Sat, 26 Feb 2022 20:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645905984
