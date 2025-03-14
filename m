Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523D1BA38
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 03:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741924734; cv=none; b=DJX3RdzoCw+/IDxfCnGaakOz5CvTZh5ytSizUQSvB3rkgtYUGOAxhduelRIbVlWR2O+Ih4P57I8o6r4PDlAlTLhkuybrNVqNhb+aEcuWqkaxfDdI9zwjCS63K5YVRgZFvqbg9Ewl8YBvsIJnZ438HzsNej+d7TdiCOgujqJugyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741924734; c=relaxed/simple;
	bh=EvDda/a9wA6jbLYF/g2O0orxMN/Ds6AeRju9xCr0GbA=;
	h=To:Subject:From:Message-Id:Date; b=CImv3039jD4rl3p1Le6nqc0dIamW9qXn0Kz2Mv6dR6Rew3GtbMXeyaBd7hZKHq1gSYParB8kUCYoLYI7QBW+cMtL47URSepU+ejjJ8jemFxBfF0GmKF8qtunyIjnyaIyGkbjmJjnAq1u42EYzTLaNymuA0TeRj6gQP1lROrls8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIjcIcN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIjcIcN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B62B7C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 03:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741924733;
	bh=EvDda/a9wA6jbLYF/g2O0orxMN/Ds6AeRju9xCr0GbA=;
	h=To:Subject:From:Date:From;
	b=KIjcIcN2zbd8lVjV7qUaT/fpNo1xfqjCo22RpqWz0+uEmF1SAKSxbGbb7IAO76zQO
	 dpu52sDKirXT22If86jP3hmXR5J57G7M422YyZUTctnbuS8xlKtMWjvouCDBWP3O/z
	 p69Nla8k+TSn+DDUWq//kEi404pAX0gfogJJku7mHK9tSx41LWCXlzcgJJCPuNr5hx
	 BRdRqRIaK2lP5xvNPYF2xmTIYaIMkoOUCrGDXlZq8/JyGv9tITcdwgCPvUCeM2lrUc
	 dye/ZZ6tSHaE5A9Z1GBR2Plr0FB6909cIf0/7lUCm1d3rAiO0gJ+J3Bh9n5AOWEarJ
	 L/b6vn9xVIi4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB6DC28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 03:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174192473363.8494.17084271047264138038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 117db4d321a5ac4c01cc789098c67430679a615a30f98e395d92f1d94e122648
Date: Fri, 14 Mar 2025 03:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741924733
