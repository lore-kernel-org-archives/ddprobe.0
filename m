Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A677B15A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659235253;
	h=To:Subject:From:Message-Id:Date;
	bh=0c05ITu+0kEVKapM3np/lp9jXVqoPlr4GSGmEYm37dk=;
	b=frIh/gsPk1MyJjBsAssoPEp/giRWUQNwKrxF1Ef3QizZ2WsVTAO6CTBEJkyhIg57
	z7VrEo/9Srdw4D/yjdew+D4LlxKs36Fgedo4Qms90Z5sQR9xF7qcmsacbjJEb7Wger5
	vqqbZvU+4nRct12oP/BJ5451CWjzVYd9tA5NPUxU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659235253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0c05ITu+0kEVKapM3np/lp9jXVqoPlr4GSGmEYm37dk=;
	b=dfbq01cgLlOWe14wLbZpt7vClV2kfdgRe+hi/x5+/144c4XcLnD/n5MQ1i28iNE3
	g1pmfGFGPXdwpWrz6NOYjgQnSJoz9l79gQ1EZXrp5C7BU5I2o6WNJyWs9mqe7+yurzU
	EhOlThk2txnqA75p77Yx603yB185WNuihHCK8HMg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825220b963-d2d95246-8016-45f8-8afa-2508aaf65ac8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a447067b8de8bbdbb22aa6914002ceb4b8b5dc50879d76aeefd75a8a96fd15e
Date: Sun, 31 Jul 2022 02:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659235252
