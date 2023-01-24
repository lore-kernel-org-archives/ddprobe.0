Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8F98839
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 15:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D74F9C433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 15:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674574985;
	bh=hOuqfieiF/bjeaoR2Z9DxTsdmJt9xEM1M2mf8txUiVw=;
	h=To:Subject:From:Date:From;
	b=EtWOxuXMhb+g0IEBYlsh8pYGjS8MmSS4myP2bmwsfiVAvdgGzldXaF8DS85SIADxK
	 dhEeD+ryNQZFoac1MOyYNyykMRCQjtbPwbRIFF1kSxEqR4VobkDzWA+lSfMp1FWn9+
	 +q+BbRBiEjOXjtg4MvtChu7LQTA68nPngioAoznoyRUNy3NefJrTHyMVDHAwH7GXDf
	 FHVKoq0oY/ZE/soAKPZHvhZs7uuSKRwNMed98OdCvXgZ50PpFJNbvid88rcd6rJG1M
	 j/jdGONQSi8bjLyov0g0kKFNIKjokGn3DrceCtTGBPGvo6xe4bF6MDOOjbZpeg7TdK
	 NTylo9KVfPL7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3599C54E94
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 15:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167457498572.12882.9876675830126798447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 919778f1c63266cdd997acb584aae6315d0be5629acce50aa209c60876e975b6
Date: Tue, 24 Jan 2023 15:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674574985
