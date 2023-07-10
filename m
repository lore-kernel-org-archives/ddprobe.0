Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78F5010E6
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 01:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57B9C433C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 01:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688951228;
	bh=qIcqDgDi+g7sCMD0txTWg8KMM01osTyjglRhrtFs6ew=;
	h=To:Subject:From:Date:From;
	b=NoX0ZzO+NPmASup2aVt66zPybNiUw6AnVmBG/cJWdbeXtWAwCc9aEwFMlaAGH0XbX
	 ihnz3Q9Lf5Q4xxWwrqau1BXYQ6SNaE8azfiirRJSynpYZGLM5i7JyD7d7C6RvNjzQE
	 Mpe1N7Dp16tlByg9mPPdvSchkjxT79/og4+Mw4JlF5R0XGdp/VeqIrcbi1K9nCp7hW
	 Pu1pmHwKsZt3Baz9BpAA+33jZdjgtPeNJQVC0bGQlZLnTM1UQATPkb/Azlffa3nN0y
	 ++qBl3WDU6AyIQFWSwvJlxBgYMKdK9fGbFffdtZwhOIXYAiMrzBoepvQSImGH7d18h
	 SwLwQaSxT0K4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B74F2EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 01:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168895122872.2910.5584225619668823425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a5f09541a336d92ec6f171a02738dc4a23c8b657e5ef2ad6ffc2907e071154
Date: Mon, 10 Jul 2023 01:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688951228
