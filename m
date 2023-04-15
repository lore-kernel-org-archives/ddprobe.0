Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D95E10FD
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 09:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00564C433EF
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 09:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681551186;
	bh=6IF87xqdwgWaJk8mhPU8DDMtU0VGWXGBlK1tH+KNlt8=;
	h=To:Subject:From:Date:From;
	b=LkT4gcvlCO+tQoigH+Zsf7A0ifEge4jRsC9glIXpc0FzRiU7GlHpR1Sa7wz+wSJiI
	 Jig2TpAPvsZrf/jB6Uiml86r45tToBb/6joqyTUUd2zpVhE2wBDA3FpNjo2UmNZBti
	 jFHk2DUE+hk4nmbCp2CToHHslZ432010IMo1ou0k1qzKsYUtrAFmstK/kyzntHcs1a
	 P4VUQUd2z4Wc11QqJoDNRZgWHt/IacsqO+3qqknBPJeN7Q0WP5r6s3TUeTxvCtSz+x
	 azhrs7YntdQLMp9Am5An2t47+sfjc7r0LMT6wpsmlrG4aZxI4t3AaQJBpYle8Xs1F4
	 uSWiRdLqQaY7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0392C7619A
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 09:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168155118583.18120.16132394962370084033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6172f56a1f85dede1b49e7acf48150ad983162210d00b091e51cb25452d634ab
Date: Sat, 15 Apr 2023 09:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681551185
