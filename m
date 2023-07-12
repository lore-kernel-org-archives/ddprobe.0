Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6963B362
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 01:48:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C49ECC433C8
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 01:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689126488;
	bh=VMCxcQSr//1VsCIqcg2f5fjRTna6vD0NIUTPuq2A+XI=;
	h=To:Subject:From:Date:From;
	b=c8wgKhKoHSm9AOS9BZAweCgRukXR/wuHzdnlwAneOS1r6KPVDibt2B7tLrtDZ3U+M
	 baIsr4oI7wvlVoiqXpHWeJPm/QDUmMXv/yktg5OeeulZuBP1QgnnWCdA4Um/zVFs2E
	 7qWPqONluqu4QCDGtt9yP6ralrdZsznzS6CmzGz1c77CTNfUIkOkQbk5AcsMc5gmRY
	 z8Plcl26Pg2VFEIuh8r/s9gjz14BcL5HmydS2ZZO8AQBMtiIX3j9ltRcKDQ8P/BWqI
	 iK5uGH1y+BXNXj+na9sTaW6FjRcEu1ILOWp04KlnUI3eRExjmQmfyfBYT5dZulWYYJ
	 3+DyAkMdOVhFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A54EB64DC
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 01:48:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168912648866.25097.3168355405485960105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9c09a53da87d87962f466d803dbbed7b3278299e085a51ff4376254fa7923cc
Date: Wed, 12 Jul 2023 01:48:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689126488
