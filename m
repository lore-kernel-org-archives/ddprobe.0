Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B447B
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 00:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC924C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 00:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674778385;
	bh=SJ8KpZmaJeerjqpOARXbzZSlNiFmEkdYR69KjsNf75g=;
	h=To:Subject:From:Date:From;
	b=STKzL5460DuUgAC6TAn5z747nn8HJa4HOymKt+wm4/R0Js8/QVa+wPi7QzUSeOIaA
	 bzggnU3s7zRwXzDvFDTXMpyQRWfb0bQRAUxIM8VgsiQVXlT54R6QAUO257hP3vA/Jx
	 H3MvbK77nfR7GLIzjY0EsQgT0QX/pzdjVoh62Kw2tpwjizM1JrU4DfFTObD7fWrV+e
	 zoaR19qa1S4JdNh+7F72oFBuTFlzAkV7old3K5diAiUYWdJg+76YzdJ64QX4R5Mq8g
	 84/bY1RfLIra+UvPJE9PPGxKf0KaW9MQ/AAglwh3g4HtIL8AfY4KoOvjI006TvW7U5
	 iLCKE7fi9MRBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5132C61D97
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 00:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167477838579.22347.14862187787174021692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71268edbcdb6312c047a6c5d70f97925a6effd0810009bc35970984fd230dfbb
Date: Fri, 27 Jan 2023 00:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674778385
