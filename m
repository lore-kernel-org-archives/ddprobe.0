Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83EE1C01
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C64EC433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668268854;
	bh=fJnNi2SldjwsdLYR5QTpb8sDA6JqWE6c3O2F6wHEpB4=;
	h=To:Subject:From:Date:From;
	b=izSXw+P7PgRqlAVVTRiTDYAmKljS/+4GvvGAd8zB9IHlVRg1KTVeOtA0UcZFGmmlP
	 ukvsh4ulVYJjl2u/f6jxxlaBBferC7SVOH8xRGFtfe45kgepSnGGwpcu4VUbOijfK5
	 qzgXoKJkNJRMwRyH/tWyUy6fm43NG2vmJ/BT/lIUS0nBRMkFInkOS2qPKGCo0UE5Ek
	 kLw6TdVnLteqHy4JVCfKQPSlRil9rKJRlXh5HbXjeExxXbvra2uPpJ+LF2EZ3ON2p6
	 v7srJUPd9PV2/F34SMm+n9vDDHAIaz+jvllQzsZe30XIW+Ot95V/eAM5XWcCzYmpp5
	 67xhXv/VHwFSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51EFCC4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166826885432.19649.18348266472098690285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60463142746dd561426d2b3372b989faa53a97e5d9ef499f36578f09a866537e
Date: Sat, 12 Nov 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668268854
