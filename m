Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71AFE7D
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 08:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644828036;
	h=To:Subject:From:Message-Id:Date;
	bh=AZXnF1czn5h8uDODx1BdCX1P85Z4La+XL2ViigYItuI=;
	b=Z4gOQUnZs9OmyUd/LMREZq/nWqAxM1lLsYcJjFS4rDw0QEMD4BSgABAQ64vCRiUP
	5VzZkuXGuj4ivDiw/mL330aL6xWu+glv7IGiU1UoOKTEuvXfJoHghRf7CISeXPs+C4l
	7HspdWjWKMiFzjmC3taoF1zzClv+exXVxpO/RX7A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644828036;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AZXnF1czn5h8uDODx1BdCX1P85Z4La+XL2ViigYItuI=;
	b=BuZIAqKxpM9GkR+/PZQK1x9X8j+7P2Y2rlaUoVZLJiNgy0Y8rfZlhE31Yl3Orcvo
	ySD7qv7ogJH266JLu71wCEvJyzHltoUsayO6xErc3kwyfUoD6JMmh3oIhGD9VQOX4f5
	5Puu1B47p9bBrasZYFsQSvi+kE/O1wCWevDpQc1k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef7640977-010e00ae-f8c4-49af-837b-06b51d26527b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f0cf0837597d33e3c2c2274e73f11539c809c546dcf9e29f0dd519764d46c13
Date: Mon, 14 Feb 2022 08:40:35 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644828035
