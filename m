Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71DAF361
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 02:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E2AC433C7
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 02:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696128368;
	bh=r+4+pzNalylxfBv1v3fKOwMF1QR/HUG4WEYhSBShvFc=;
	h=To:Subject:From:Date:From;
	b=dp/6Z+wNMvTND1B4LnyjzDSL+duaTvnUMc4KtblyljfNHZzbAG0tRwzH6PCxBEfGL
	 YK7KBGGxrYh8NPraPPJDnI9nyICAJGxF7u59c5p3LTYgOvkmVaymriyBSrUiJOoAmh
	 jBigfHoFG1obGwn+9IiThKXpQhOKyYXvXNia0USGdPGCXCRP3tTYswVlmqYG+jfgDe
	 SZapSRU7FJJ2B7sWSbWB9Snz3NKrEE8cbFl9wMC2bVBVVhw4q7vyixzvZOy2VmTJhC
	 HIuPUhE9u7ybLsDJJ0P17tMNLSAyo3l5n0wJyRSpim44NlV9bbWaoIMrMFdFpudzs9
	 RLg7zBgpyv6YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3ECBE748F1
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 02:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169612836869.7684.17231627732899146301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b15a1050d13b077e79d57533197550ac667f162a0fdfff05aaf6b951666795fb
Date: Sun, 01 Oct 2023 02:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696128368
