Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B4B17EA
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 14:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650810838;
	h=To:Subject:From:Message-Id:Date;
	bh=sXwmaqE/ey+p2TfrIRVohO2HTr/jKA1Npd7fus1IJAY=;
	b=e/UXtKE54mt0m77z270Oj63E0ejFM49gV0aPj8ErWNy13a0+pIm+dMk0J7X278KV
	ST9PfU/37fF7dvQcTVW3XngUxAC47VdgmIn/Aa4s7ATTUKdkghY8RUSI44l9kGg1GW7
	c02f4pHEK/kc7DvJTJQtbO9Td7+ndplphqB5jXMw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650810838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sXwmaqE/ey+p2TfrIRVohO2HTr/jKA1Npd7fus1IJAY=;
	b=hjKGoWlPQnSDaJqlFaTc9zrqE0syq0YFXiCsV6KL8JHZqL6m2ZhqsWGoz+hp0o+r
	k+K3Va9fdgpX2dZhCuYyYuU3peVCuU+vAMhMnCPqLJ5en/pT8X0y1ueJrH3XaXtq0aD
	T3ytt54M0ewV9fV0Yy09vskqRmygE8qCcznJnC90=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805bfe5d16-86282e1e-52a4-43b7-846e-4118ce18b3d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec4d6b0c28de94cc7c6742779bf32cb4c5d877d6131b2a2d433ebec2ae4b0784
Date: Sun, 24 Apr 2022 14:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650810838
