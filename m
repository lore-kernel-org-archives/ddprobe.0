Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437FC1C84D7
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 10:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765276374; cv=none; b=CaPfgUATDzb3YAsVZUMJ8QU89JZbxAxzQbklRyeX4Yw8YByvUkkSmB2UQsCtfdIyHWoGZFopoEgy3PpRNa4yzOyl6ynmpnuYVtJ5nRo/wrE9PE/W2Cp9KitqrO40I9q6gxwKIbZvK4Ik8mtUMTanzsqshVzDYo+3vzvDLdkkulk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765276374; c=relaxed/simple;
	bh=53UFNJ5zrDxqRhfKPhDUzyWW4m1fKnwqQbfF5pBqylg=;
	h=To:Subject:From:Message-Id:Date; b=fdOiVfjjula1z7gEk2BEPjhKZ1z2fLex5tOpN+JZotQ4trJuwHUOt+Ex4GCYMpitojNBs+ffIp88bTQ0h6FZJ4nwjGsch99UbLd/DfM4WCAHOS48d7bAbCS7YacBxDRw1aCkDoNAiJRDwAQcmhyPQfSL/WAL7xABWpPbJjSYJng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgX/giRe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgX/giRe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DDCC116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765276373;
	bh=53UFNJ5zrDxqRhfKPhDUzyWW4m1fKnwqQbfF5pBqylg=;
	h=To:Subject:From:Date:From;
	b=TgX/giReBJEwc+RoHaQfxYpCqttAKzD6C4FQEk5FAU233BF7TbBkQd1DQ6N96huXO
	 ePdLIzP+Hq2SDk61htq+HTSHnEjlIBmZCnLmrn//QXgOaDBhff3Yo/7C6o2BKA3Tg1
	 cp9AT2KVCZiSrYG/ERwy26CCQBAKlOHGkqIbROmsLiyXykUncUsU0W4Vl1+MGXbgFe
	 QMkjy7c+jlHEZoT500RC97s2uDcIv19M/Tb8xEWAuw1zcpxXAZmIJR2G+Ng7Zs/yqj
	 0p5fosBiuZbgyOtVqBjL/hBQ6Ux01kgkDC1wmPjbV62T1EpFxGMSq+dJQvIks5ObgC
	 qZ6x1UYSGxHuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DB4D1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 10:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176527637359.7307.9942546904410254175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966367630da8d8010d47171c16061462f329b865df0f35f197e9179bf41880a4
Date: Tue, 09 Dec 2025 10:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765276373
