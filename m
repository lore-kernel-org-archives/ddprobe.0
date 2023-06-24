Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84E2CDDDD
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 22:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4212C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 22:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687644788;
	bh=YHZ7JbYk+2pngLM0XkZ3UGZyNwpDx0d7ZmTpR1duyrk=;
	h=To:Subject:From:Date:From;
	b=kc2lYKME1JATvLLZ0WvFxNW7iPtUC87QMrsCBUIUHbDprpCBkZPcTc08UXmPDb1Er
	 o7vE6q+Rkv6DSKixZhy2aVZaMFZwySfww+rDEppd1dV/8wThCYyPwxomr/96TBYk+B
	 HLzUo+pLV0QLhj31QvSFk1at5pizm1QMlxAlbTVrNwU4KnS0BpamadLc7zTBN2jev4
	 AgqSe0gF/TbvfZ/sN7rvK+dZePUimH/R8s0I0Xm74S0uDeMbi20zWM9zyv6nphisV+
	 IdqvvVchhUtGjsDfbLd2rBWkWs8RNRztV4TnszZDpLzmEH06LXc9d/TRkLDnrwFjdB
	 pT6/GXEIN08Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D3AEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 22:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168764478877.22010.9354946471967222669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1526f565e677bf0ca2d2873819f34e8a95e16b487ae4d1844a2fc862325ca926
Date: Sat, 24 Jun 2023 22:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687644788
