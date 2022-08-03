Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50AB11364
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659535852;
	h=To:Subject:From:Message-Id:Date;
	bh=6saNNYac4yNnqRvVUaWM++dfs19QjoBnsSmHaysoIl4=;
	b=AQuuKCQNUcQofoPwQulfENv9hxZUCyagUR8ZTUnneYM5KkNlxsLn8iK7OXXNEM9a
	EoAaupQIXIBUC873JSCD+X3UULM6j1Hz5tjq5n2M0wE5hbkLZJ/hq8ygzJxdBWqZvtu
	5k6tUEivyRf7FrLK/WimDamEN1XVM+HnYmfklZf0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659535852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6saNNYac4yNnqRvVUaWM++dfs19QjoBnsSmHaysoIl4=;
	b=XPATnSXBeYO6zNANws8LSFxi9EVmOywk2JNksvSOEJhKc339AJEF3XbsKiPsi0co
	CcwsaHsvJclH/a3WUpj+K8be1mhRgu1evULr2KcLz2SXOQwAz+agREM8u/SDT6HYKTG
	/SlCs0mGRe76TP54lRxlhOCBWM2b7X00vl7FKOww=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182640b8425-a33519ed-6a14-4b68-a8bb-f72b90b4c9d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b629216ec2238488bcb427aba39824f3f48b0f772343e87f10f62546dc64b84e
Date: Wed, 3 Aug 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659535852
