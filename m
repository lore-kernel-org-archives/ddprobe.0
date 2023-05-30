Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FF017AD4
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 16:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC8EEC433D2
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 16:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685463785;
	bh=atv0Ajt7LIdLyUTp7lLVJhe3+e4u9W5fv0910b3Fk8w=;
	h=To:Subject:From:Date:From;
	b=Ou3Vs0pCA4zSkU8eEkdzRH8yuzmH+ehD+ewEyCvdrO6Beoyuf/sEEhm3npZKDH4q2
	 aOdsRGVc+7kCJ+CmhfckCCLMUo0QyogPeMq2ZS2lBZdER7m9uoZ/rb2hp8xRbgN0ws
	 Fp0HRSBkwJo+qfCMxgOtlKunYLOOHLypm3HXzARMzLe8MawS5pjky2eNOHgHRZFmMt
	 N90d9hc+No5XGGEHUUAKa0VANfHypDtUoMNP4RTr0/eR2s8594HhLAIxaxyaGQvSfk
	 HCR6u2o0djBSc5b4H4JzleUnb4xjVb5PIKCsMAIP4NGv5a2iPjvZoKowoa2ZPMSwKx
	 VUUuz9I/cmf0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D95C77B7A
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 16:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168546378578.4856.5281168428862201228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a90e2ce77b9ce350b8c44bb3bd13a21927605da9865055729eacf78a5069ddb
Date: Tue, 30 May 2023 16:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685463785
