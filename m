Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352D117D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 08:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94A9C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 08:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674202925;
	bh=Dl/neSLisRgx3ygVZdQQsHkYsZWTkzjDFEwbJzmTrOw=;
	h=To:Subject:From:Date:From;
	b=qraDTA4w19PIl0ym55lzexmietgbnGZCEHgzbI3waWkZ9wbLNkTjKvjX8O6kJZumo
	 b55IKfiOpnQSHQ3BpTcb3yr/qG7xpjWaBuANchRbJzdtCZxJEiulhe1TzUzUO3maAT
	 rW1C+zgELGMYRSSYVoRGT4NrOpY6osx+6+IQvF+Eo+twLEr/onvUr0xy7JF9mmCXcS
	 vWQYqG8mgZLG8XFZOzDIOvoWlgmJW8JvDrgZMPw/GjdXxo3NJHAW5zym7vBaFoeVLy
	 I9FPQHN7Oak5R4zkCnudwL/u2vgCMcnfx1WGtTyiZpOu4q01JW+n+aY96Wji60wOeW
	 FS0oRw14/Z/DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8987C05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 08:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167420292574.31792.11869645043444109977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e348ce66e29e6ce905d3a6128c1179a2f3c8ef7fb3a0cddfc19c7d4f03c31b5
Date: Fri, 20 Jan 2023 08:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674202925
