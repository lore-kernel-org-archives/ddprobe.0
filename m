Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2CD45CB0
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B0EC433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667886654;
	bh=F/KQzCDhf4RlaPUe5m4oKKht/2tCVETrHk0zPgk1CFQ=;
	h=To:Subject:From:Date:From;
	b=tku2AwG2mRNJNR+VzR8amhgQUO3740Wc751EgPCoafE+y8aKHz+eMVF1ttc6oujEf
	 fdFqsL5apfN0BymAZOKK4eOq8TKlL9pWx2XH5x18pdCIMKz4MW6N/fju40jeWHuBrm
	 hTNiYN69ScaHsrxNPf3RNBIGAkX6nQQ1y15CY46KIzyvf922wVZqEQGt3WaHJTxpFc
	 6Uwamlr0Ry0Yp6CgWy0cg38zgJE+mmYNfzT+FYF9q2odO2PIrckNV6HoQT93NLaeiA
	 fyjwrxfCB5I3ZnE3fJnccQ5LWfZ8fip/70VNliFwKOMhzcaRjIYTwxBO9ZCn77Tgpl
	 GhEvJ5MZVAUqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC72C433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166788665437.24992.9638001150165625207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 661519b4ef0e42a9f5d3fec933f3a74a3e4ffd47441b670acc7f6ecbe4ad6adc
Date: Tue, 08 Nov 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667886654
