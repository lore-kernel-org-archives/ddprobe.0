Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1353FE30
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AM/mO+Db"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DAACC433C9
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702664296;
	bh=3CW12a3OnYA4+ULtNi+W5+ReDDgE8hFDLu+UEUeqOh8=;
	h=To:Subject:From:Date:From;
	b=AM/mO+Dbkoip6fkXUQIL1ARpHV1DtWOvB9qqPhQU3x6QPQTaaKAgL5HIvK2khyY1G
	 ME/f1Fhn9G7jFERp8GOz12m/ZzYzuv1P/VC9I+k8FPzMjQobVSRY9cfO8FRc6m6CJt
	 CJ8rVT7wQIuzD25t8ao07UR+mW7FcRxeb+ecLzwhfL/TZ3t+KibuvWJiK0XTbcAElX
	 TSQUsR2KM2FzBZSHtYKddfjxQBOxph63cq1JjVD7tP6GuedTvFG8PIL71eTDJf2HMo
	 5/TB6X2awB4be20XPjGUyiADPzCu1jGXBwQmEt4GttrhG6TPRSPq/LjkGAM/i7Re4c
	 H54tyAhUvMq4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E0EEC4332F
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170266429637.28206.2354083628571359583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3627e7f1fcb36306b406d96255bf3885ee7003c13871845036417290608858bf
Date: Fri, 15 Dec 2023 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702664296
