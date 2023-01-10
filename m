Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE71623A6
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8379CC433F0
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673371287;
	bh=UTbhjnVoqkQfebNn8OsL28yzj/sJpcEmS1TxEFdXXok=;
	h=To:Subject:From:Date:From;
	b=dA3dee1LlNOShhTsQx6IJZYm7CqmFAdmQNAmvq1DPgsNWQyPha/fCD6rnmSfFv+Zq
	 FdyKy7xPxV3cPZDEv1r4c/1b6mOIGOFMSD3RJEoq50g+fpYkJUbyL8JgCMHNU/OQXY
	 GkPs7F2Z39/qZzoZvGz4oX/j3mVkGDAOHNt6t72oKQltkh74L923ycOOpejXwZ6Z6m
	 QSFZzKSkBGk/SZhSHtV06gkRk9+7NeXk/DCiFxooywZ+wB9Zqk3M3ENFBmfsU0uaqh
	 Xvpud3XIJrAQOtH7bDTNOLO3pdeCICNYntIc3Fwgk3iskboiK9I/ZNUlUcB1z8OPeC
	 Su2JW7yQPiDAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B08C46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167337128741.7312.11295798984227245824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85a6580b68221b434981821235cac3088dcc48ce016bebc26a956c86015bf33
Date: Tue, 10 Jan 2023 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673371287
