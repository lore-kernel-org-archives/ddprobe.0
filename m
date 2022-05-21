Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B76417D0
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 14:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653143519;
	h=To:Subject:From:Message-Id:Date;
	bh=rQn9VzTlCkxxPKLK9shQCpr6xwlti7uj6+cqdZckwJs=;
	b=WjV+zbyXDMGSTI1IgpAZa85HiOHmZpwErA+D4gF++jVEJbO/wx/2DZq2Z7ZnRHAw
	Ton2IykURwkPYWlh9y3SXJjvjXGjGesWSXP75tfZnZ7XvUQkG31Y4AYtzHxZkU0U5A5
	dyqREqtzu79ErZoaO9ovjU5mVgbqXsaKuEsXJCWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653143519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rQn9VzTlCkxxPKLK9shQCpr6xwlti7uj6+cqdZckwJs=;
	b=RHbcECTlwpUwb9K1++jMQLs9cFLFOsXaL+dm10j8HCJ55unuH/Xg8voO/G+++5Sk
	fbTsxS8KQdLR7dRQi6KRN+Hp0Ba1XiUO0iBTs5UFc8rCmxQMOpka/JqoW7cIFFbi43s
	y/BdZVHBew+VcS7LaTYiROsioYc+w6clODRFMVTU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e7084029-9a7f62e4-d9a0-424f-8b78-562acf6b0bd1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd09ce44e0d59e601cd033c0eea3cce9a82fe5570ca55be92f8b49e54b5e4ebb
Date: Sat, 21 May 2022 14:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653143519
