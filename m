Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F222B7469
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 23:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647298885;
	h=To:Subject:From:Message-Id:Date;
	bh=vitLq6EWVoY3NEtTELso0ML9LwTZVt4BMVYilxpMCBI=;
	b=L+e5AtmPnJ1tNHb5yOW5F9ARIBY4Y59xla3T8NaO/hxaK2yK5vZeY8cg0FtUuJyR
	WjASF+CaIz5zLjbXECdg5iDzWAWyIpu9CQQumqznaX9FHM37H4/HqLq88wiwoI+eGuN
	5UjXDHoLnQrFFUmiLVRchEA6Hq8wuuq0A6FVKOP8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647298885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vitLq6EWVoY3NEtTELso0ML9LwTZVt4BMVYilxpMCBI=;
	b=HV90csbfFMsZ43xA30M7Sz2vSexKbR+H/uYdhV5FJ0GP1uUv3ByyMAna5uCag1Td
	xK4ao8FwJhmRyvyQmxfP37b75WSdWtgZ+Cgi2IorHvrE1i83L2/ZJMxxjf3Ax5/lYn8
	L2/kR2sEJ4FTzakJfMy8mGWocybPLVkVZlKoFCXA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8aaa3489-06f3213a-8ce0-43fc-80eb-39f64d7c79f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98fe472a91f3943b8e91dcd5587cc41d6825412dd2cc9e46fab6639d2e7eec75
Date: Mon, 14 Mar 2022 23:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647298884
