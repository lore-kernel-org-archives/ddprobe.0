Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C73664C8A
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B7E2C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666107653;
	bh=JN31jkmVE9xbJ8AmS9dYcaBPVgiLOQt/iwM5tkTa7gs=;
	h=To:Subject:From:Date:From;
	b=eTn4M6+SxXnuJTyHbVcy2dL7YE73iGbleHPD1iAjb9xkhvz47k3i4hon7GH9z6W80
	 jZU5ZwNLSfA2+HugBGNVNK+CeHP+W93xkK8XVmhzsA9MV1vzKYcQOt7GdlxwTbKGbo
	 5DgUFCuZv0vwqP/E6x8EtylGbici9+AxlS3BSo8bCLhoj/5P951UxUQkDMhdt6hHKb
	 4/0uEyguBiFjt1xOAWOOWyYcPNdZMsPW6pbo1iEdoNJmg7K/3o9oFE/QEOSVhQ5JnQ
	 sRAr6PJX4Mp0g3k0xF8vvdRiRHXkICf7EYLwFkEHVNHd7hktKNNW9ctaAoIRhwd/QE
	 /YAioqD3qt0Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5349AC4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166610765333.21606.10248495036811408710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52504bc72cc3065064d454fa49f1156e8edaa4d2d07605b1ee64dca496c26b05
Date: Tue, 18 Oct 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666107653
