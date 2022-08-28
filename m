Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C449E2F43
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 19:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E50BC433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 19:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661714452;
	bh=LtJYOyQ8bhrQ3OlDJ95zGCuFwLDVTaQJaZ6i0l/rpNo=;
	h=To:Subject:From:Date:From;
	b=Y508uUJsXCBPg8mVL0pMxsCn4abq42ZytOIJdeJg5h5DJd83WZZZb7uLoQ2MoO6Zf
	 EHEHIpLYDJqS+T+gN2xzw6AnLeBsajQeBXdNpxctyk6byUa2iyDmXt1qsUywCPmeQ3
	 XtfD17GBa6yEG7SD/WBvL4gNXo8TZQOHgGh9dAZxFOFvpw/rIGtvwGT66GvASoHnQG
	 rOnGfhn2rSuA5C2+ZioPu6UkQTxXifLbqdOmwA6NUJj0MOeuWQ+ofOZjKAMibon/kU
	 HX+JhMT0am56ibt1sZddlzjdSKvE6U0q914ZX469i7iXwpGqbAqyWz4/mDJuBcQhKB
	 2duVVPGCywHcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C62ECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 19:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166171445233.16054.12974563891496022666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ebd9c4f6bad8ca4f52f09b79ff766668d3d66a645d73ee0a6158b595c804d94
Date: Sun, 28 Aug 2022 19:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661714452
