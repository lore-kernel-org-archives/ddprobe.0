Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4709E1877
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 09:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA055C433EF
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 09:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684057685;
	bh=GND3+31kBC6S1sExtOhUta4tpJ36B+wd/4T92QV9BXc=;
	h=To:Subject:From:Date:From;
	b=ap9eyg7Bm3HP/uKLe0r1N9dmy/Hddf1gkLw7ajkDAe9+6negTgRYzu8/suISfxNru
	 QrN5/dIsn5kKyYKCCK6/9uxs/KvEehTJFyEg6KG0GQyZfTpTIAvaLtiFd42jWpzALr
	 dZzRGtdDB+qcj+anpBx04G/tJ+XuazMxXYMzqyvbjcAqtnuyFcaaBZYXGj5yw/wG52
	 J4ODE40hDV3GoF0ua+TG6g3vut2UoZ1rizQlbu2tnJvFmgzYctPs5fWXhQhUinOP7s
	 U11+HV1KmndObYUrAVTeuQ8v8/LdB020l7u6VflO0VqJhd2k89M95ztBLCGJpBn83J
	 Y3TQ2eMnN+52w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAEEEC77B7D
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 09:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168405768582.15412.12432614000409238474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72cf6fc8264ffafffacc88b989af9527800df4b6a3677c57a4e3f3f571559dbb
Date: Sun, 14 May 2023 09:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684057685
