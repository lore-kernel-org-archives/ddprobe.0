Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEBC2256D
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EA82C433D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667516454;
	bh=eiVrXNCxXg96GEswTRylYGeAwOU5YaRftqP6Yyk0Nss=;
	h=To:Subject:From:Date:From;
	b=fG5U1kJeyOvnRyC8QzNl+6nz/3DTWn1mwc1w+k+X3/fLd3k+6YTtmHvDwbpP3tIOt
	 fDv9WrxAKKLGUSWigtncGKBVsANr4vVIDVUe8Rbm8DfAi1nzambPlcU2xauj6O0hI4
	 zddWC2wWQShYMo+ssGI+azHn2SR4MVxBcVkaOVbg0CuAVCaolWwUJGatbArl/eGeEV
	 gO6L0RC9jj+aG4olTvohTs4NBmaxunVk3VqHpuSm2/1VcNkUkCw2snusRuO7dsvify
	 M5dMUK1wOHtrDArupTuXUUW27pbEO/31pKCcVTaUqFnI8KpYfZz0Y6kM+zVI/1NHM/
	 fTdEIWHSwxIRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61898C433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166751645437.25811.16415779709219862424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0c465564b15dd26985700af3fd098f62c9848fe3b130f06359e9b132cc69508
Date: Thu, 03 Nov 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667516454
