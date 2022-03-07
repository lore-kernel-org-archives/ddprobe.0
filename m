Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570E37482
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 23:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646697084;
	h=To:Subject:From:Message-Id:Date;
	bh=eWtTcmyCLpdVW90GGGEtU5eQ0KyD9/c8aYn2AJSuphQ=;
	b=J70ScBNXxMz7hy6/30viOQU/6yEkA3X6KObDDOnpFq5Osi893TngLeSnBrc279Dx
	hBxBs6pSMNAvqjzGDGqw+gCxhF4Kjfx3zfYTRprKS2Aiv1zTQKZ63VR3oruj0Qw4hac
	QqDKKL2JM9QZc7jIyS2dnPDNUyp2Om8s+24+Cjig=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646697084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eWtTcmyCLpdVW90GGGEtU5eQ0KyD9/c8aYn2AJSuphQ=;
	b=aVIiaPaQY8gCKLFGxXVUKEJed8cnTbEjNG9FoVx/vkXD8w42YicLduf0aSN+DgZc
	yWHrnqz6hST35alcY115CVeooq6YvPk0guMPp7pU/gJjg1qHWrkj3UJaw3hW5w1vbFK
	U7CjMQuD6d1HbjtqrePWkySwREZEMrXrW0VQmZD4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f66cb7758-8f78bda4-65b4-4fce-bd80-314dfd4d858d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3fbdeb6e770bf491f08da0d95a20a50f39900740f504e54deb1a029b9e2f192d
Date: Mon, 7 Mar 2022 23:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646697084
