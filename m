Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4F9379
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 02:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7D74C433EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 02:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682045225;
	bh=Hke4AwBIz3t9YPeZUCMnCx/Eb+QUUno3BiczA4J8OSE=;
	h=To:Subject:From:Date:From;
	b=uZ9pT4uwKU8UztbkFmCh163ZIE3/HzTQTx4sJHuqMvcNPc4doXiAak+aHViMcwBa4
	 kN3aVd27MxyTk+VVqB4S3qvoYNaIpUUGQVAwbJHKpTakoxbJqbjNXngLC/QtVhh5zt
	 bl3v9hOsijh0NoEXIaBSaKb7FYdxjQEQuEVZNVChtnaNMBYeemGnvJj09Mb1uajZAF
	 Cy3QUfgC6seDDynfL4Z36WukWePwq0meB0GuyICZ8cFRJvVpmuCRcB9HcxCF1PPj+X
	 zRwNrR/8pHGtQNcJsQytLxXKzFHqSpOIRwu5QHOHOdXieXWqDzmJWzVQ9D0qv2GYHc
	 17RsCHpAe84fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9FEEC7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 02:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168204522581.31510.14757336175231710732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf2a99fbd2d5f5e376da632bae9e61b66326409ca4618574afa5a5c7002d325
Date: Fri, 21 Apr 2023 02:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682045225
