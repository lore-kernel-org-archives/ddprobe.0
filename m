Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362B22F48
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 15:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2A09C4339B
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 15:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674832385;
	bh=WpamM9PGgVkh/G3RJzhq5gUE+dwowsILaXrTkB4ECaI=;
	h=To:Subject:From:Date:From;
	b=olfSjpEzwotM5pVYfZMtOS9ET9UPg5EKSPVG5WzzDJWgjs8D6LVUylD8ni8qNIWTs
	 CmA+8plWOCE5tfn9hfjJaIXSL6LZqyFRaOXqj0UBAEbFnHVTbj17cPMGYhekFTA72f
	 IOPtltgncySzaXFfMQSV3gfCkdwdsUXtJf9mi5jTjLJvyPmjjqfm2frj2E6MU63X03
	 v8nku/W3eGQR6Ii1jJw8zunzMJgTo/QmBGd0IAagaAPTjYeBcizOlwhlOTAAGNc6mr
	 tNw7m62nb1CTaxaiejjohloR8kR5gd2eRzP6jx1garQjnJhUEsXfoRSMrFfakx72QA
	 y5hWUy+L0BJbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28DDC54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 15:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167483238578.18897.8379790964257782084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af4ff003d150d1fa64a32659af162194cf574bbc57b20b474bbf3f8ec948b71
Date: Fri, 27 Jan 2023 15:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674832385
