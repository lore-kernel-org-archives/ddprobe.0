Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECB231FB8
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 03:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652929379;
	h=To:Subject:From:Message-Id:Date;
	bh=91DMzGiSghtF6Tp4KPFnM/taz+HHfB1fOxcSNS21reU=;
	b=ZcAirVzK4naz9ou1zzMqDNi9Y90Ww8FYHZi9APOfIDRh8z6hJYrlVvAkr9FW4Kz9
	cTzvMlMKJZ3/CzKIdN2BowU/sN7G+2559uj0Giz3h3zVFQftMsVqrTtw+w0PNwNl66R
	cyQkanrXUejTXp7sxUtjGviBn0tF2y8RTI5fsh88=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652929379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=91DMzGiSghtF6Tp4KPFnM/taz+HHfB1fOxcSNS21reU=;
	b=k5e1TYSH4MZ5RL1BX6UWMMzjH0OGByVBMzwlDZlli0C0sERBhd9cAQbDd5OvUhFw
	Tw1W1ousRg3Wj3ty45GiYqDcGgwxcxCi7RGGr3vNDJKIksHgQC6a2hrvL6VDGtDcSAr
	te2Vz01YNyMShx0yi35WH2TctlWXBz9oKL8y/ZWw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180da44bbd7-c2917a34-82d7-4208-add8-93c5a380d11f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b611d885d5728fc8328f9f4aa944ed8efb6f25c92e99aa2eb181636c2ffccf85
Date: Thu, 19 May 2022 03:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652929379
