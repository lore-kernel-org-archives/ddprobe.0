Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485306136
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 23:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645398684;
	h=To:Subject:From:Message-Id:Date;
	bh=HgrHUd9RiZ0ijx08QSRJwI8bpUjhwvc5nEz74OwTmeA=;
	b=QOaumDQFttjpOaPRtfA2Gb5Yxp2ZK2p5m/08BY5s6Lhqw4Sb6k6vsedD9TZt9vru
	vgT2IpwJLgh0YbJ/xvxN9tvxIYLcUn8FD2gfYlAzjfAOzQPEB3cIzro2gxpipilhRN0
	Y/SBHd6JxoBCNU4ILhDoRyEzKvV+YjsE8IDi1WHs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645398684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HgrHUd9RiZ0ijx08QSRJwI8bpUjhwvc5nEz74OwTmeA=;
	b=dLQSkwFVwb0Q566LYCWJAQO3xpWQPQP3xUs2XAUjXlIuWDWn51Jj3Y5oqP4SEqXL
	Gz7JpoWEVeIZxCSd2s5vtxfiIx82OXnTpDwqEqx3aOa387lvZKDWOLersv7GRzBJGa4
	N35WXsK/BKNuiy9kmwCqTiUnbaft53PFydB08znQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f19677450-ae438e3a-c465-43c9-9c0f-9ae01bbe9dbe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7943c87815c055423d6233e291292836f2c90ea9e6fa0124eefb7999aed8c63
Date: Sun, 20 Feb 2022 23:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645398684
