Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F81E5A38
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 21:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646948784;
	h=To:Subject:From:Message-Id:Date;
	bh=il0q9bEMX3NRl1rXn/GthTAa7CCNZ9eM2bH40qu+1go=;
	b=H1Ta41bBrb1xIQ8kpfMXdcqplrb3z0hpqRTm4XE8i97fUmWotni0O05fGkSBC9Lv
	EuAaXH6OtKwiV0qXqtVYm+OnTOUpcrBO+nMVvuER4KSzYSNCcYb1wg6SuRkxzjTsUGf
	twEgDLdYEtiwGK2g0USpDIoz7YjJ/TdU4qXOekYs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646948784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=il0q9bEMX3NRl1rXn/GthTAa7CCNZ9eM2bH40qu+1go=;
	b=Bk+zHrRXVnpc0Iwo5ki5mAGFIz5n+yJKnCG7Uuh8WGJcSWPb8REfykcVRTguKhCN
	NAzcviMFKRvom1e4csxhoCsXtIa+KTDVvMNoUYTO/BcNCOqe6CDsxh1JjwTwtofHoTw
	CLoeDITo4MkYrCYiNJDJJH6U6ryUCE7LrIJALa1E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f75cc1aa1-362d3567-d38e-45bd-85d0-175987954438-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cec9fac1f3bd630ff20bccc682b57a054129b66d7251a0bc8ed2679321ce1453
Date: Thu, 10 Mar 2022 21:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646948784
