Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3C0262A
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72F76C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668139854;
	bh=1ZO6mwWXfO/Z56wwmDHWlZxfrKorh6rDzyeQiFBeVMk=;
	h=To:Subject:From:Date:From;
	b=aSFRkvC7MnxwxLWlZFXyn06d3IvGI3S9VaFfjk5rW2RCTDFMae9h/T4D0+x1i+W+8
	 cze9ZeLWQ7NaO2O1srKQjO5Sy2HPDxQG7qEciyljNOZrrezXjjugr1LXskYfurjxBf
	 6AMPz1qTEBlBHppSY722+uzf/zDQ7OJ4C3iBrfWtehNur5naWSzfwOkENhNmWeLiLx
	 A3hm7h45F5hgOW6tOYPo85eEvI/qYUe38cjC7icbu89BrEHsYouLxnsgHA9agIffT0
	 3QluP04Vj05PU36s+CIsJUWI5XWlO8inElT9CrOhAoWaiiftQPMWlYA071BOH540kj
	 OUALZstgD3QSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F20C4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166813985433.17429.17368208559147568422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 050d2c5b7cf012aed3e174f3c89ffa6b1c2bae0a9ace773b14abf0421dfc50ac
Date: Fri, 11 Nov 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668139854
