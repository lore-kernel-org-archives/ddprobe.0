Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE6A31109
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 11:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84F9FC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 11:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670670087;
	bh=+NsWR5n+MsEG1We4601ozg2hFfoAt1N0eSR5ZFqkZFY=;
	h=To:Subject:From:Date:From;
	b=VKF8YxZx92JsiHbWodyja1yLiqt4CRsSt68AJFligqJE8Jelb8t5DQFxBYXFP1erf
	 Uh4woe8CXDScbOCd3uitQwuz+hoYN1sIF5LfudWyTkIavo9yBbyNF9Z1hTLJlHNPno
	 zqwzQ93UnCHnnMsoTinygWbzJsBIyxwUy0jt05LF1q03jxzAL3KrmDSW36xp8/XVMO
	 G/GWubvqmccsjX6un256PIaAEXn0cikfVtMKQqTZhrMq8aKRxZoGLwX9msLsi3Boa1
	 jZUPiDxjga5+ca3UVUAsWMN13hSsBqHOMmS/vCgeSL/JHQfk7oq2J/HJ1QI2+mMA2H
	 F0sXK8POms5OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6450AC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 11:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167067008740.13262.12826311639746582594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ba67e6ba0cf3fe205b68b85b4666b524537dce024ee96199257cef8fa63e9b
Date: Sat, 10 Dec 2022 11:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670670087
