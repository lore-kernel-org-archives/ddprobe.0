Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F2FF7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659336053;
	h=To:Subject:From:Message-Id:Date;
	bh=Xr4HoGF89bTIhogrzVMRN70Y9MqvYGisDLV9LECT82w=;
	b=DGobXy5ScidoeEvpBFsKeC/GvozZeeTdLw8wz4Wb9wYz0TVsA9/nTxh9aDABhiWC
	o0ysMjjNL/9AxLWCw2icm5q7T7QaUtRgeqE9I8GSLAqP9yCbgcJ/la7fsb/AyR8eY48
	zUzJmm8CZ9wP+pw+UYJlT1RQct6GgQ7scK/jagoc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659336053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xr4HoGF89bTIhogrzVMRN70Y9MqvYGisDLV9LECT82w=;
	b=KU5XpyOH1ithOnM+M/HBOU+TJGLrTUZVypAcS9n6ZM1fbBSfHjfy35LxfFZkQEOe
	Ub4eQuu5YESsky3CVAyrhDwVjo89NqT3r0WFTDwndgiofRSI3wNYSiF+MZVxwc8v35i
	hU+cQq3WlKxy43ezKOpjGQkXNHdIQZNiLigbF/GY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825822d05b-b51ef9bc-4264-4bbb-98a4-44a0858d07cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32587119df628e62440851e9734f63d025332a7ac992b263fa013e8eff986e9c
Date: Mon, 1 Aug 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659336052
