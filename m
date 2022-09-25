Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1F377F
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FDFDC433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664074853;
	bh=82K8y7MFDZS9464wDFc5TNnu9DN6C0iWskbuCdMo4Ag=;
	h=To:Subject:From:Date:From;
	b=hiVCIFT7mNy5KPgenV69Ij3fx+EfNTeXP4+Sqvnsis2JGpdByX7ya9FM9tWAnIFDe
	 gDOW20bvJnCi4qeV1eOb/2MPUkvTF/XNVJyNFxymdPt4Sf1FD+xBw2wNQ4faP+DaBr
	 DFpZ/M/Cy6OixiyHzNBTc1fwf2aZSmsGRXCDUmOi8WF6Xulx7jqK/uqAYwE1AMSJi8
	 8tm/dMRPLS9d/C+6XlqgoMJLvmV2NKqWWrgNsck9kIVsmCV0Go0qovKqSIYOCFmPno
	 z920LcawOM7DbrNSXb5QdEITuIzwXy/AvPSjuS22qOqoR/B+eGuPbf1Z0dw5ECRQtj
	 qeJLfwwgpXlsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5063AC07E9D
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166407485332.30396.10113438278387295771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667112b6b49db74897f5d9ce5c4a394b93f28964ee8f94637eb534517cf6dea1
Date: Sun, 25 Sep 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664074853
