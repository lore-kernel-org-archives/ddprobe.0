Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0750EB12
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 07:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EAD9C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 07:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669446054;
	bh=NunkG3CM+r/9Oatqn7zFhSkNEu3YsHp3NCrCkxMI/48=;
	h=To:Subject:From:Date:From;
	b=LI+xzZarCsbS2LEMmRRR+IEkrt0aHpMCFn9RCnI2C5Z5rMeJgmPXYffWaYlWNDa8o
	 y2uS+sYrSz4IBSW0RwhezBo8yRUj9Vz56OmpMpRX66Snx+d0iF38AM95E6W6GV2QUT
	 tyiaOwAeIs2eCeIzNQ8FIXueb6HoDyX+GxLtX0KFovaDad8Xmz9uTnfUyxKlVUVYPy
	 RhDJqXjwFovh5oHBhieubUmY+XTbfLSU2gGS/aNE2phZK9U3bO9Bu/X8XZydc/QKvT
	 MKYcR7m74KjcZgQ9miuU7z3VTm9NVeLwAnvB1BLpJRT7Kn0fFgsvJahLf0cF2SK005
	 q2mVE3moo0qhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E2A1C4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 07:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166944605437.22839.15988251054262307524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0eeeb79039713fce35dcb6b702b2d1cb8bee4ada7f339a7151a68ee2cffcbe0
Date: Sat, 26 Nov 2022 07:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669446054
