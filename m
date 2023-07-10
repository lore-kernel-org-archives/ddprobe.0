Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFAA80C
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 12:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF4BC433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 12:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688993228;
	bh=A/KUpbzd94npGUa7i7TIzO70H+8/FZgfjbPI5Ivo7zE=;
	h=To:Subject:From:Date:From;
	b=QOHGVdCtEiE7FGnKUebFNrLbLACGH7jXm0Mz0yGoPtDs6muUQUQMDJ3hC4d4r4Zxg
	 7IaqF3x9htiM5MSgGCORFHtLCGZaa16CydPd/2n9tC4VKE2xlRokPsKw8lYd3KQQqF
	 Je/qr6aHpcoadivlULXDP1rVJaUWP2zyRKZsVhNrWma1JV7wHJUF2MDcI3Fyr3YH5w
	 l77F36YkNZ3h6JBPW/4f+kIspE3qTbB0pxFB+gWW2gJvH6OSQ2DWhSN6KfBpwSBA7L
	 qfzj7qXTB7ygun6TS9zQG1xyUHZSBV8aJi9dqH0Urv6p02pFUAUs0FHFl7XmjEqMZ6
	 VcEp+WnRSyaOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED2EEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 12:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168899322870.17573.2396529225851920811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a81ba234ed43ed1f6d47da67eb7072c35b4cb0414f1a5dbe7ddd4a407e8ae37b
Date: Mon, 10 Jul 2023 12:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688993228
