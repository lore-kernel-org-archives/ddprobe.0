Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BADD51578
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 15:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644937585;
	h=To:Subject:From:Message-Id:Date;
	bh=pvC8zK6lafJ3rHrHXA75w2YN+Er7XQsszkX6M9yprKg=;
	b=gC3grSjBu4mEudDMCLcqReibgxi9ZJyhhPpnht0grcGFoIYLnUBMU9C0XUxzPCCP
	BrdnWtTqXoNtGVkbk+yevKgLQMArJOjV1a+e41pgTqDpy/kZqWNpKrCTNmtZ+QejUQX
	cc13sT4VjsP9PfakPkAm5VzvWcBEASBYdKD7khJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644937585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pvC8zK6lafJ3rHrHXA75w2YN+Er7XQsszkX6M9yprKg=;
	b=UQ5IbJbZFw9OTxh+AIIcOWmcRY/0Iq1ZlgU4j5kntlcQzHQrefQi8QWwT3eEzXWA
	Ld3mrzGsPhLYSotHXUdIGOa6kbYZbJ4guL0unPfzqmDAXoLWAn54Tc5d59XV9zCfHA9
	XWKZ51G2KQtATSmQsOFkbQbhzVwxQ2EDEWrcNUwM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efdeba064-008ff5fe-52e5-4182-88ce-f65d5bc24816-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b219b6bccf53c273191aed7883d78c44c3246e09545a16ee8630ddf1c3f51210
Date: Tue, 15 Feb 2022 15:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644937584
