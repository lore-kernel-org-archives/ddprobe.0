Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042821841
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 16:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653581219;
	h=To:Subject:From:Message-Id:Date;
	bh=Vfli+21MZUGsBQIiFI3zKBKyvmnTuDTjjf1XGSRvohE=;
	b=VkqJcdEBtCHU0UAbAyOAudZVb3mCq1CA/NRf+UdJfJDoCEM6RIkxMZh+MkjQXjmt
	z1PsnGpLxA1zJYj2AG+d1CM0fZORlRnTz0jDwByP1mX5HYro1+k2WFY2jaeG1PmpCjf
	WvTM1f6rjHuAAtLLqfTAqtCRKubDMiuCh8pM0WM4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653581219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vfli+21MZUGsBQIiFI3zKBKyvmnTuDTjjf1XGSRvohE=;
	b=CfxqqAD9WqBAfa/Wb2Em4f7oh1MF7Dk5IxW1BYcPyg5boq9rqw0dRhyAKJEkAC+x
	e3Pl0YtiXBF3pDnKDsdlU7jfceMbYJvMFtF0sDZtyMpOi4aNPDazrE5/LaZ8z67tpN7
	ULv531LT+bdA9Ya2kG7WvJSZ1v9pfj8D+47njDzc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181011f05ca-87c5a887-2ec7-4aea-ac84-c2c6565a2d2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f4eeea1844e447f80a7600aa17061599f9fb7f8c609928ad08038d79d95e7b6
Date: Thu, 26 May 2022 16:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653581219
