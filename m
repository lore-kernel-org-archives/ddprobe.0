Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B88727A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 06:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644646819;
	h=To:Subject:From:Message-Id:Date;
	bh=no9hhn90Pu680y/MdygYIWZgJPD7IgBRolwvJCaZwRk=;
	b=X89psQtqumeiwuDH/0PPba+OwyJwLZNWqCDQV1CovCIWJS86MVZ7Q32AuAJxLQK9
	/v037Ej+AAMcCbPx4lnpHqGQ0YvP+SaO+e1tjB88rlTnh7Dfw1pUSgMuyqCl/TKEbGu
	vD0wcEE8Y+tiyOIawz+/wqkM+AGePYI9IG+HyyN0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644646819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=no9hhn90Pu680y/MdygYIWZgJPD7IgBRolwvJCaZwRk=;
	b=JRB1HdCs4fgmpdW+mDKWalLZbJ9kVirvMtImOksBxHbPzJAimMham2kkQqCbKSH4
	8GN+LKKrLJ15SOUfKgZ4mzxpDlXeZWPSAlskcyCR/pnM2aYEo1OAF+Zz2rj/Mq0VlXd
	vb4n1qPbh5c5+yej7rIqa/XzYaYbKJjc9YE8K4SM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eec96e324-7af39902-2507-4b42-ad81-c900e6397739-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5268c37791da5513c03104f8b3d619be02ac9a2976e0dbe4f61aaab375bac087
Date: Sat, 12 Feb 2022 06:20:18 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644646818
