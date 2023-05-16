Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCCF1FB0
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 01:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98A3C433D2
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 01:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684200665;
	bh=jcjwfcBR5+KmQrah1r+hbx28wo02SpCTsWCxMpN65Sk=;
	h=To:Subject:From:Date:From;
	b=fEvdg9EyTNwvrLlWIXZSoKLNOpzJEpSktVhja/84Non3HePhhizgE0+g119OcqUBq
	 ShVLfKQ+j1KjY0eLmdZdI4QdnDgWt8G5Nk4dDbLK2hZ1EKAa2fxvT8e33ilMiplE+t
	 URPWpQH0mesRDfuDshbk/Ykdlm5nZcJPXn384A2HtMYw0sqzwgY1Ta84WCYTB4C7Of
	 L8pqejPxwgXA89PoN48F4JMx/xhEDm0wIC5SGowOdzwmHKGQksQ7V4E3++5Y+8fjDJ
	 Qamj9Hn4m7qCZDGqeM0a9XY5vxmkWBNpFSdyWP3H2bAD0X2Ah0gf+JIAfUnWQF5jjS
	 c7MZA/JmrVIhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC548C77B7D
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 01:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168420066576.31709.63761652219527543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f0dd23eecda9bf3dab7b53665b4ff4611815ba93092aa4c8052f3d9b7da5332
Date: Tue, 16 May 2023 01:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684200665
