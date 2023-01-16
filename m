Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F02F57B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93463C433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673907687;
	bh=YIHvlXces3omlprutPAaYAAcNhAEQHcGQUc4rjGw29s=;
	h=To:Subject:From:Date:From;
	b=ewgY/v4Ggwf95IObFK+NNjLi/Q24KhoRoYhzI6gThQqNK1h2HhPXasd6ZfneQKZZF
	 T2hPFpFkuLpwrZnJ6YBj4AIDTDDoJNMWHx8HWl12Zr1FpzIyasXZpO2UfamuoyelOV
	 hstY++ux1gLNN3KzFZcjzBFB+bwpLfGmvBfPUP4JUNPzFkuEi4iw4gsuzeUmPpSejf
	 Q930oQSPU5FluQpzdaNyxHnGrkVaU99sNcw8HaAetbCkf1nIAqcJuJhoHoD/V7uig4
	 ehqnSYuJILvRpeJ2nDLIrfTDIIg66g9755CXMNWHTNdPj56Dp8YACUjDmCJUsS502v
	 W0JwhaoFiTGUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71D45C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167390768745.31133.16358531835425307632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61cda72b46905d1b5d5c5760d17b7315423889ad5dfba54d39d54008e83ce3b6
Date: Mon, 16 Jan 2023 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673907687
