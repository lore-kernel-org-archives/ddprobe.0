Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A4FF15D1
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 03:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3kJHL0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6A2C433C7
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 03:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696736828;
	bh=KxfRuFuEddj36m/mpc2509Izh9hH0gjyjq4/2SNVUwc=;
	h=To:Subject:From:Date:From;
	b=G3kJHL0ltD/M+SSXDF+YUT62DX6jJ1/Rf+2Fr8DHMkvoSnwxqMmmx5uM2+flkyqqz
	 /qh59A9Q5GffyUIacNwZ7K2dIyHY3/jlrDirFJr7R42Q7F6eqxqbRAikj8OSn7hTpN
	 GBrSPbOHup+xwzWDrBLeJFM110MpmAi4oFo0GXHXwkeZ1vDaz/N+NtiMmM1xHTOMwg
	 4T0gQi3R8FDEw+54FYjFGroxKz9KEjAaxvfLQA+knJ3DlauMOdTmsujQnj3wRc4us6
	 IiREOxITn3pEQnv0awL9WQ7o3n3feW9tr82qqPn9DKbXV+myxY4DTE2Q3U06VOPfRZ
	 fWvEUaQm5VhRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0572E95A8E
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 03:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169673682868.23510.14705877784515142800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3f94c63f66f5ab9729673be4320cd6ccbe31942089c4971e53cd3fae6e37a8c
Date: Sun, 08 Oct 2023 03:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696736828
