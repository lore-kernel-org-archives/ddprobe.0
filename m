Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4858483
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 19:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BEDC433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 19:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676144045;
	bh=FMYgCufah1jjbLPR4+74qhXsXJm83D0Ozmp8FouHhC4=;
	h=To:Subject:From:Date:From;
	b=VXZ4aQlp9JEsYahQo/6SEP4fbVMeJcOMcF1jNQpooNXJFeXlKWcctnaz8TcZ5KS/3
	 ahJCZsvmmhUGIMSJMoWylMJ7TiBlVlMor9G1LFuTWh8MmjWaZeX2rLwN0hIrobYCum
	 TAkbizEAPrSYNg30uxjXxH4qYnUF41w+J89UxDjG9YApLGnpepArqm1Ja04SROHIik
	 mLTUETF3s8NPllogw8iTuSwMjKQMXnf4/dVMX2hBNiYYgiW23TYdq5KpyQu88XH0XE
	 1HbZaUeLITf6nFqGvPWkhU2WnHe4W3iTGvbLDk61FXQxDAghcO6D993Ah62est4V0v
	 cfqIneZLrnmUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67E3C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 19:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167614404572.27928.17459054915687013466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a7ecca627adb1d07087e386042c42f678ffce3893bc4057f5e7a9d7891de4c
Date: Sat, 11 Feb 2023 19:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676144045
