Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF7D198A5
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 23:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E6AC433C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 23:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693004648;
	bh=FfMfuPUtwg6GT2dkM2ADge6Wq6F3vkhupLMfA9DpG00=;
	h=To:Subject:From:Date:From;
	b=i3/OJQNYow+29Fgx8FfoFqF1WDXlZGtojd2YDcc8pEeLCGyxyPK8zCWTvr0iMnL0u
	 6gvt0SDwCT2WIPWVzU6loK3gTDcJYiVF9iDMXpZLRiqxeFCF3mcc0YMkQSdHQqeYan
	 s85QYtmJC6Tz4kVOsqTEmm87hnUJ2xCli94G2fnPit7IDckfe6Jx+fVdwZYQQ+avKv
	 OVafAOTR+eUc+GOOORM0hvoAlbFAtv0k8G8HNdEBYZidB0qrPr/zOk/JI8nO17fUK/
	 WF5NNcicAZVBAxg/kzRKY/dkrnU8fsxvh/6gncjWyYC27GGNUwAJTTm51C/eBwluU/
	 V9SlhVpUCgE9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A635FC83F06
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 23:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169300464867.2200.9194028016250889496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a6ebcd5c72fa1a0f5eb1dde812622ff65d4b70200fbbeb13fa599a0b8efdd84
Date: Fri, 25 Aug 2023 23:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693004648
