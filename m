Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC74B1847
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86ADCC433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672363887;
	bh=G9y7x11wacrC7IUAEWJQ2RUObWpUObg+GExap7sBeDA=;
	h=To:Subject:From:Date:From;
	b=gb+u23otTE6NKcRL/3T4scm9VMqbJNCJ+6/m1HDSxiIJk0CMCTPTvwEh0pxArNQ99
	 2uRRXWMQ5A4EzEAGLDD7BTq3CP2F8ovt0xh0ArJ9VSGEqW+8NpERfF6r9v1Ke9mEVA
	 /g0B1XNWAir3Xd3PZjklYrywntvnEe2QZ8h0sNuCzCALURbM6ixi64fH0731So2jof
	 kANkNwOqnCHSQgv5NaBHOZxCrm6h9g4F557dBt6hdIDNg8iUFwoVWLyffg+QbjavX2
	 F62ry4rJxGLEo2IoceSz58ciwHayFwcKwoQ1QJAmsTfmeiKR1KxAZ4k+ifZS6Fl0A1
	 fjVOY+JOjvDeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66942C3DA7A
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167236388739.6046.13902884416089481202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c63d6b43aac6829aff41ce512b5872e08c0c12fb0e2b78fb7d31cdadb472870
Date: Fri, 30 Dec 2022 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672363887
