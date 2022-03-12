Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538F07E
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 07:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647070284;
	h=To:Subject:From:Message-Id:Date;
	bh=13XrGcExXgQ59RNbj152XArjPZwBdXL1yPXyxBcRkQI=;
	b=DdEFepMlEAUXjaPiB98ejhCPmHlxKxNLRAYGUhKSKLtVDEr8CenY9YN/aaTfCkAs
	lqRn+kX5medto8AHlvzzOyxXh6sfXkUgy6ItWeM91Sv1YquXwSHKAKhZ6ltmogyz12T
	1quLvJ9T5eOateVG/PaXwoKnRDR694SVd917MeW8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647070284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=13XrGcExXgQ59RNbj152XArjPZwBdXL1yPXyxBcRkQI=;
	b=D9qGRYrUP3flsJUs6ANUudaRy/73h0xYz8t+TrB9GQ/MXbe/dLN2+zqvdgX9dABV
	0XuIP2940fNyKrFkA/TdHmQXrXCnNTbUsiW2RfMoqwiqVxl04+KSwdo+uL6Xoe6H0Hu
	EwgLcIgCGWuKciWyKS5vCQu/h+bb2ll4gu9ayJLw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d0a0bab-f9515ce0-cc6a-431c-bbd4-1cc5c1c72bf2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc5435092a42e4ba2296ca4addaf3836baa4576aad3997e3af4d10941938fd9f
Date: Sat, 12 Mar 2022 07:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647070284
