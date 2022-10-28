Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCEFCE826
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EBA6C433D7
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666930254;
	bh=0UpOS17MdzEPfsxNvpPzv+vJGyZx+/PdR2xtegBZVc8=;
	h=To:Subject:From:Date:From;
	b=mbm98rokXI18OIxHutNV/vJlPIqd2C6PDV/ISErh9050ExGI/jqNhxE4D0p5ynULS
	 4YaDtFHfoipwDxryU1jfCnRHHwB8a0mTztUCv02SNl5sfX5GKw0u+DN8RRjJbtXqO2
	 kItclCBmFemXy+Mg8FwKu0npwnXXiitfX2VQqAarDS0IsprGUdqehHg+UUQSLcw9QY
	 xLohgFI7StfPxQ3zPy60n4YII4Hw5v38NCgdkgpzhDfTpQgfRwJxKNiMOlKSaNPJYG
	 U5SEVTMlSQ6/07E5LpM/895hEwfw9f0vUnFnbDXDlfy72MsNAS474hUrrNOAdZLxka
	 0I4r68JMfkiJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5828EECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166693025435.2976.17329811839626641848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 297beee7337d46ab506b5f3bcd4597d849cadc05d03d5f1817a3db62f05f7390
Date: Fri, 28 Oct 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666930254
