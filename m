Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBBA290B
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 22:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FCFC433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 22:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676241245;
	bh=bGwWpxIaAosXfmxl3/AiWR0QZph9d261UvyaKr/Iwcg=;
	h=To:Subject:From:Date:From;
	b=Rz74/Nr9u/X2dhi952dVYC4hIKVtxRldry5BCEcF1qYZzxe7UB5Ezb11G4NvfHWvq
	 8Tt9qw08AvSktiwMheInHuxY+zv741bFm4R0lgqWqg25cedDjUEAZWmBz7LzQR1Dh/
	 pW+37AawU8sGk0HrY5R7m9I8nLQx9jqzvicWIRlcaC1ncyOoxG5a122uj9iQJwYk79
	 wbIG3tRIa3SubmmEbb9CrOgGIFtSxNwLrS5Q22pU0o8hAIFVsZVhIO8tJoTmVI1pnH
	 9fmfSzQO9vvfU5kHPQPMCdXepJfgBfWqTwzHA3qLyIYpWpl37td+CCpbyXWKS3bcxh
	 TuhWZ3giG1RXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5BCC05027
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 22:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167624124575.19831.17469669258113779843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28fe433266e2e83193ca5aae4da90dda486c2a90e525764c7c3a366f3ab39237
Date: Sun, 12 Feb 2023 22:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676241245
