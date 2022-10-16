Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA4602F28
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BABCC433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665949253;
	bh=ZRgJ6EqlK1F1g/rn2eljreLtyYAjpNQLM2F29B1f4BA=;
	h=To:Subject:From:Date:From;
	b=ik+rVc99XPTKOVtQaY3C9PbcMANmYnqgsl9nNIA1O7oJ3LGx5dZCl/gGC25aB9bWr
	 Oe9tSxsstth7vpTS+GXZuhboqERKgioZgGeT913OXLktJsFkqlKqbcks/jI+mVl5fQ
	 s/P3QSzmsqjk1c6AzH8nyiCO5gEZ+G7FptC4ESKFHRyZ4mqvjbEXpm3zaW1sgk11cJ
	 sp4Zb3zu7s62gkTwFR5mPf6XPN3e38Dd3Z4LnNB32/M/mnMh9IsN1Q+xKAEHY6DYlM
	 gB7/nxKY6ZpsxDoiEZ297O3WKCTWx3q0nuCTa+CBvPhnf3Katj7OZ5/GT684Z9YG8z
	 GLHGVgepVUKow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5379FC433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166594925333.6755.15184076988345585772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82dabbfc4807c0ce4cdf3b506874dbebd5b77d9bb235e517067469d7f6532801
Date: Sun, 16 Oct 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665949253
