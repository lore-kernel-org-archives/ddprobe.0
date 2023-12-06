Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048B230657
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7VYp0qL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82A45C433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701862096;
	bh=q4QJv6cblKSas7H9Yl4gPUenvLmG2CJcT7UsgNaRU5U=;
	h=To:Subject:From:Date:From;
	b=r7VYp0qLsmlQEEJ61qLqtrTYyXs9ssI0kaL6fx9IsE6xNC+F7P3S5lIGGoqs8LFvz
	 pziqnb6FfRdcFUOOE1Zuur7xY8kth59a3gO30taMU2TpNBOomTRbhbbrOns5SUPYrt
	 beTuoUBVTkDvS/V+3hyY1qWjfSbiO3Y6nlqWH/3K97O8eE5gt9ZCb8v+Q3C0F9evfh
	 lkhWqa5ti8TJ6z0XRPLsobdpP/2oJzEOYftC8iqXu+rMG8RN3IhF/jwJaBrselX4Ng
	 xcf2KKQpbZZrunOGndYafJN21Qe7GGbr0niP3LWp96c9t7UKEYpl0MuMMUleeDSPck
	 1Non8elg282uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6898FC4167B
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170186209641.25427.16936811314733052285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f01b7bcee34505835efa99cbaa07fe5bb3c6b02222e017b8ff4bd430e5e786cc
Date: Wed, 06 Dec 2023 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701862096
