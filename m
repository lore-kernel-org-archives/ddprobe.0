Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0144617C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmavnZ7S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D739C433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703213896;
	bh=zhfGO74tdjtXkklDB5I+9Hdae2Kd0vmyubeAvXjQdXc=;
	h=To:Subject:From:Date:From;
	b=PmavnZ7SHekUl6VcoWIjIcu3dxPjl3m1md39frfyajuS0a8wZs7ouNcyxp2PQcDTD
	 neu/J8JmtWO/+JMI6jVIZpXFmpabW0IGXXj9ogW2fnW7h8oFzGf5Q6xlnl0d4sSrfD
	 mtp4fLkf7wJrP9LlD7kZZMYZq58ymvn7DQB7xqHtyDI0KNONWJQglzsh4TjFqSL/pU
	 +zMdjEhspS0pOqZPX6r92JjDIJ0xxF9JanjrzXNz/t2i/gAP2t/wsUzfp6hGeusd8f
	 QyEVWMr8m3SJP3YMiTBbQjPRlMgFMLmBkyNrAIsWDBld46XgmrRdaB9hqapbvY0AJj
	 5P/wt+cSMBDcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6568AC46CD3
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170321389640.23464.8934486448316980622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44e9bb0c4246c24596b02cd78febaa26d5cd1b4708db1e2aa39552c1be9079cf
Date: Fri, 22 Dec 2023 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703213896
