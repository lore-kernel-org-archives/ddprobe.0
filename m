Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2281A1871
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 12:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658234812;
	h=To:Subject:From:Message-Id:Date;
	bh=Be3xLHGXE6Ab9Ivhl4nTE1gGri6YCJZ+mNuon///+bU=;
	b=IkBhMpyVQrCnXEBbSA+RaTEhkoFTm/xYCd69tZ5cjaiHDDS+68lQatkqvm/w7FiC
	EVTKr3Qgv0+ADNhtrFNzF8+flr3BYqbgab57Wh+MFBW2oOsoqtLOZnAt7GUWxrh9Uv1
	LksI5L582a/o7AfYOhDvkARQNut5JLTstmlkUTz4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658234812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Be3xLHGXE6Ab9Ivhl4nTE1gGri6YCJZ+mNuon///+bU=;
	b=A7Ftu0LXKmnK50vZLWrWCwO9Imkb+AsmoJIMt5WFjwLbgV4c5t1wBmiIunrOVg23
	U3uLODkSTwu6+UxT6Rxbk/hsUw5SsHME3Qcxxg+VKmfRwYTya50AGrAwv6Ocs9ADYkH
	pv8S+NC65nCHujgN/U1O6faU1zPyKWr5Vt7Eie4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182167f378d-8798ac8c-938f-4c9d-8c70-db3ace5a75ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b74840a4c8d719f65c0cbfca26786f47f59d3811cdd18ee775d3c6f9d4d3881f
Date: Tue, 19 Jul 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658234812
