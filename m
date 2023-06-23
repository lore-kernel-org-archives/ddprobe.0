Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4679C17D3
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 08:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C409FC433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 08:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687507388;
	bh=ji3Vreb67S7snHIOsn3WnGckL8QJTIvNpf8grnnVqPk=;
	h=To:Subject:From:Date:From;
	b=FuIoYOtVPR4IXWFVJ/1OF9gOX5PNwO1mzQXDHirw7YDTb+wv9MTd0uvj1n3f75hD3
	 O0YOxD1iQAin+cXmAJ19q/M44v8FSxt6rwRiAnH9pV0/1xzJpgpLsBYsQrKhhGlOaw
	 4FzVo435E7JzpDUu9/3ibwcXfEiNsRDF5oKsiXVqa+HvnytniX0EwDbIK8J2+aA3rW
	 e13cDyGXKGwMkQbrXX0vU2IbrUIHUQVl9Wtg4oTmJ5JOgKhNVDknrkHaL3KHqJ/Iz8
	 HzzcFSliaXGVtIloEGRL30kafrDNHnTMDptOSj6SiYSndctOHAdj91h39OHVpZHk09
	 7EAm348OcQraA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D82EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 08:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168750738868.21793.4562943726615590647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d23606edb2d5feab78c427bd722454a00c944ac8f845ed808d84b9ee687853af
Date: Fri, 23 Jun 2023 08:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687507388
