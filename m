Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AF5175A75
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 13:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780838074; cv=none; b=aHThBGbBekvgs72PJlC+GQXP2jkj57Kkap+BQnzBz6A6bUm+gGesaNXl8nblhOECcMn+2236yN2Lkv3ND1h7ijzAI9GTZeXf4pGJ4Xqq0YegxbSp6BSk83WU4U+ZzL6in25DN9R9kE9k30GxTSViLVR7ggu5zjplstWvvjcP4QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780838074; c=relaxed/simple;
	bh=legnGj5OWlD0ERP6npK6gSVL0o1ud/ozyabzjZkTgkI=;
	h=To:Subject:From:Message-Id:Date; b=Kce9eK16JONavUL+xsbLTByJiEfLDd3+rMwjlF04tAcbHfMIS/MhBlRJifmFgV/P1m8ZQLaTPV30j2OJImcVPTGtsWhGqNiHPOAooFVbBtfrkQN5T85ldhhGMDUfLrz77SZMNtg+/H2bpJpKN+qSyXiNXtAZBB/U9yd42hbDUE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qz+OiY6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qz+OiY6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDADC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 13:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780838073;
	bh=legnGj5OWlD0ERP6npK6gSVL0o1ud/ozyabzjZkTgkI=;
	h=To:Subject:From:Date:From;
	b=Qz+OiY6Y2CvLJibYz2yUMTlTqUfwknK/dClgP0meCeBMKkabe6jc2c3aAxV2TCieo
	 bMFvoi5gxNXhgB9eQ6SQpKBqFyq9q2i0B27j3/XU7vRwm779oTk2NE7U5+VQn0cBmJ
	 7/IUhapGD0asSivj9w+Kg/stdwhSeMb83VhqOvNO4hhD6TrFEv0BxqLvoTYRg2BWBm
	 1MU/iHbYe+yYQ2Pmu74qZoqr4T+bnseOlcJpBNr962g4U9KsSz48Vno1Xwzvz2PWqz
	 OO+YoHq7HvcQjYXyiBPI/GYj24isZ9cpuUZ+HkrKAk3n/N0bHCZZIAnQF7FG6alujX
	 ZEYkgiTvkEzRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31AACD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 13:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178083807369.23401.13508483182024461293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c530a36a8ff6eb93b434a47901cc8bff0f0866bb74100e825fae43a925de056f
Date: Sun, 07 Jun 2026 13:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780838073
