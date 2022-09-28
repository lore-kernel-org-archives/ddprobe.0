Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3AC7E
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F922C433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664326853;
	bh=ZcLcJvKJKK6LwLXxGwCFik2KHJ8x8atd9cH5uY88Koo=;
	h=To:Subject:From:Date:From;
	b=DsEEycIhb8L7rhYMeq56wANZLzUoHgrD40bS7o/F+sN7HxsI2aDrxQP3F2z2BkjRs
	 JVfifo6ZnAtr0d4wBuzVKKY7d/96Jz1unQaVlDYMvGUYCuthyN/ofLSL/OkpKz09MD
	 BtqsMxhERjhJsl/7yNfPj//qwbsWU1l6mUTZPzi6VjOaYo0EExJlq/ZSFLnBC6fnLM
	 UWxomKEEEHyaGM2I/q4aaIc9c6dCKzbkDM+ropYU5Y3whlseOdTez0QFLM7C0V1xl5
	 P3vMBynl6sENOFupEoa/ELfidODo3ppkKf/z5CWMvKoi9gnwEQxrHt4EX4WCR18KQn
	 V9XsSylV6vQYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F746C54EE9
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166432685331.26695.7671579015737406693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8773c0b95758d447dbcb37536696840901427370785e6c411e5d468e3a9e917
Date: Wed, 28 Sep 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664326853
