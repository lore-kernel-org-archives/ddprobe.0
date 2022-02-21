Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 963C333DB
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 19:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645470985;
	h=To:Subject:From:Message-Id:Date;
	bh=i3CT9TEY6LiEfzyrSMoyv3pPZeqiQH9VkI4CqYQhc3k=;
	b=O+JUZOQnfd1Q4+IoNmbHOTab5Wqq4UOv2UWI5w6XgFwCcdQ1iA2vAqG9OXhnxCph
	Sdd/m8tUmmrnQVA5LVGaeZEfR9WX2IE9W9XPl2+cfCN0TpnbppVjlTzWXB2iqWx8vtO
	HPMIfXfciNFlxJ//KQ2SRMXRj/SGpyMseA3jREA8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645470985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i3CT9TEY6LiEfzyrSMoyv3pPZeqiQH9VkI4CqYQhc3k=;
	b=eudheRs1MK1WFT4V0M0OCpc3+K58WuvrrWS8Z0u9jp9vCWPeksXZsP6pArWlKtUQ
	G65UqdAFDkqV35OvZZZDLEATzoSksCdBgI6UZPd1zeKe+nyEhHdL8x8fo36QphjpUji
	82juGhzldGff+BvzyhywtZRDizei41aKzkzLx1Us=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1db6aa48-d5c61ff2-e50b-449b-8b27-cd356a819323-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0197d4446103f6cefd8ec70fe431b6392081b6948d8e0efde2b5ccbb090d3bbf
Date: Mon, 21 Feb 2022 19:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645470984
