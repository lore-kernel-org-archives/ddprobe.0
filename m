Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B0DD2F7
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 17:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC04AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 17:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679678466;
	bh=Mi/hjVplLeHv3D2oBNrrhdlFaZGcXlUikHhgpoFolYI=;
	h=To:Subject:From:Date:From;
	b=BKkf1mHjOFD66TcIa2Wbp76EQiWwp74EjxIbjj0G/S+L6WbNCVsBLtVvJDOOut921
	 HFZDLG4c52TgEjLkIGjaSAkjnM/ndsA27I1Ee50u8sWIPNGNgDvw63ozXkWX0gGQ2A
	 BzgrTM/pwW4S0XdqzYoy34Rmg8+vdemo52YOEVY1r3vXJycqXvTQ03nG9F7D7Benix
	 LgQyF9uMFgPpA1xopGwIyH2+JgAL5WtfPJHlGu6XpuHpKY7Xk0UkIwAdq2UeTqsMSo
	 02Kv2bnYr4QFxuWFQXi0zvvr0BOO0vTec7BnGFWBE7rtOCm8E659eXrd5U8XlPKNNr
	 FSWSz1ZaaeOXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE70FC6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 17:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167967846577.28849.4403913681457029616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eacaa90d298a29961f9dd531e001fed5784e5515587529c021c6f2459b4558e
Date: Fri, 24 Mar 2023 17:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679678465
