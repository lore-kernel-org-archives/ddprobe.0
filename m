Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37787C150
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 14:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F1DC433CA
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 14:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692022388;
	bh=oyTKvLheMahN/fTz0trYhbf83Px0PgJIsb51UNyKBmQ=;
	h=To:Subject:From:Date:From;
	b=kB/kB9s9QVawPkHq4XnFmNFArkiWua24KOcTVKuUVIwUkCdZCVMtZHLJrJ1h1DsZU
	 smYXgjtMOamNG0pvgvb/JedHfRuBDjR/IyI3aGZWUlFhfdan3DUSTjZ+5j8GwYkdpt
	 vtwMH8HUcY0RJDnHlujQ+2GzlT/ble6JzsRwA6Opgq7sfpoD7p47UOsEgcETswTmBX
	 88DImc3s1M0bT2MC6Sqp8/zDxLkylYUc1thOKRwr5/E7cyoOPiFQi5v1trE/2pUkr8
	 S08usfxiBxUoI74Gm+h7lhm+opOfIHaKWWbFwpXbM1EounLKwSnZLIEZV4sb0m96YV
	 +3MiNHNRp42mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A480DC001B0
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 14:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169202238866.5279.6084481173281296875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce68c78975c878a58ef347d0e96b9edf280d99c73cec380a5f3550786c6fc9a
Date: Mon, 14 Aug 2023 14:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692022388
