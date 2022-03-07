Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AFC238E2
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 09:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646645785;
	h=To:Subject:From:Message-Id:Date;
	bh=oIv4KQs6Z2qiLYv2xUXc6IKCHZ2AlOVEnj71yNxXP+g=;
	b=luO9qw+KQ5fmJj/rFhpg6pJmEKEJfF1s2IZ4b92azazeYjXJYPu4NmvONKE5Uvpe
	CgPYxDJuakTPJgyk4akDrht7o6pwVdD9hVGj8L3MWmktFZnLf7GihhHIPXS/Qa68+sA
	K2IeJOZbeNGB6iGNptHGcJiazZN6eOpan3NJQC/c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646645785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oIv4KQs6Z2qiLYv2xUXc6IKCHZ2AlOVEnj71yNxXP+g=;
	b=Z/Eyx4oFaO9RtdNP1onmGdAkAR04Gf2LCX1xxu6Cp6RP/RR9Lns9Mkj7+Gc4OXOA
	Xtb5Silwbpz00hhkhkJrOYH9LfzAuVLytFJB9gXf7sMKyWHMdrqS78tJB4FKPiYvwiS
	mf9y8Xwux95os98ueNF3HIiBPVfs8yYpat7sadNQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f63bcb08e-bd76ce24-60f2-44b4-9f75-e55d04ad2652-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a052273423ade646592b23aeaccc69f2ce814c84811f8b46d4761d94b8036187
Date: Mon, 7 Mar 2022 09:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646645784
