Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C2B79D1
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 18:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78D5C433C7
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 18:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692643448;
	bh=ZVU4CF4FhetILXFdSXPwx1xVenFUVrsk9YQ2h/nMHS8=;
	h=To:Subject:From:Date:From;
	b=fEMRKIarGAI1g5hH+ljIgY2f07Q/my1JkNrpA2bljdRffzjojIgn1UQq6/5rywVXq
	 vpweR2N1dvoKtC8RPPwf8zRIxaqJL9rkG39C0N9qb3SzRXolAHNYDhGyeZjDCy9mEY
	 V88yxIUC9fXAD201wuDyAmS/qjCdBhfX7yw3NDlTmFMgmzDuQRAfS6igSGCpJ7is7r
	 oRLoxe352IoE/I5G8lYkBCVAiBq60WkCfGlIgHLpaHY6qE49HJwefMslmgKWdG//L9
	 /4FyFrpKqHfV4I0scEy1JWBrw9JaOZYsCNLHqVyhLODYdOc7aYxHKetGhsEo1VKncq
	 4QQI0ftPg7Q6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B56C1EE4996
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 18:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169264344870.25630.12475199715502819192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f84bab3c2e4d0b8cbfe9723ecbc5232062cf7299fafc19fa5f978dea4da9a109
Date: Mon, 21 Aug 2023 18:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692643448
