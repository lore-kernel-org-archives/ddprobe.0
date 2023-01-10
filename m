Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DAF67481
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CBDC433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673361687;
	bh=D5sqWG0oZfv9h3X5tWFjGRNaO8JKbuW5++WiQok/wRU=;
	h=To:Subject:From:Date:From;
	b=ppmVKIw03ZErYAfYDdU9ZuUwGW83PO8k3ADIs4P+E7PXYF9wHMgnXvp/16s7QgUq/
	 7H/hhi8sxY+0rHStNmIklULKBFjXh0DbJmmgIiYJZwEL79WdgnuF6567cw33iP0QoT
	 p+j87DI/KTR6G7sO2MRogZg9fsInSycsmHaBBpn9TpGsDPCRzu+Jzedk/cI3DzVYJ/
	 +8rShHZh85b0/V0TQwHia3+2BMRqyebNEECgJMhugKiMeR69WA/FP6KwLcC6GvRRJp
	 Nrx/8jmR4dQQVoRGk3ve3588xI3cU6bM356XAmFczT1GnIHJiXnRMr+TSfZtHIWn8W
	 cLl8l4OR/WU5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BF6AC46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167336168756.21043.14949446598052072146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be095e75e1e0924b43ec99565bca7ccd8f0d763a9b672cd861ac8f4a5a888996
Date: Tue, 10 Jan 2023 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673361687
