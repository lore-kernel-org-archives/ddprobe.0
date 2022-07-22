Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AAC815A5
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 02:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658458012;
	h=To:Subject:From:Message-Id:Date;
	bh=jJ5UBpTJOyoENO2JC/wc0xrxrVofmRkPJ+lVpFvZ9Qw=;
	b=B9llGdvYI+GP0WGwAguHv69sQJV4vHXAQVs9I9bnK9pskQzNafteiJOvouUUGBmI
	wgVFzwyKM8ie9bTcSPpXrtGLNG6Ty4j5nGl0ZNTg6qfoHj6m2ch8iG5/+UDOaJdWEFZ
	kdSEiaAKBQoO9KACKGW47MCOxwg4c9mu36uPqSJI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658458012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jJ5UBpTJOyoENO2JC/wc0xrxrVofmRkPJ+lVpFvZ9Qw=;
	b=ANAzjq17sve22RAcdPCy07mzTDElkHFR9lITvI0lWkGjZ2GU8reh6d60+nkaAcni
	7FptkPUyikET70Y1+B6XCwsD4ACDc3N4G1z3vrjfYCLohCiNlnvLifu83oaEZHTVbmi
	eO5WSI4rFLHSiQW6OVWxpsENLQHkbvMgJ1MUEKF4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018223ccfa85-a95207da-8bb0-4f1a-a1a6-85ffaf0226f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0882c85ebcbb1830996d54d11295c2dd59a1f5556e8d7e430e41facf09712fd
Date: Fri, 22 Jul 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658458012
