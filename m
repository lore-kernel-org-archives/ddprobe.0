Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545798F41
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 08:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C611CC433CB
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 08:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688112788;
	bh=k8eGDvZlmq6CdNkaQTDdPtdMATWBW0pl0LpdqMWKgbM=;
	h=To:Subject:From:Date:From;
	b=gZt07u9w04tvJpOvIco16dlx4tYlml/TEG0DjsjcsFKET05i3PxXMwcGGflSE7VF3
	 7PKqSOQ7g2SCCQQXrwrtBUWsZOplSYZgM/SiduSiBBii6YXyYPr4MNIzRPzg62KAVG
	 h7rgmqP8EjVf7Xi7DCFW4yUBAxtjAhlC0l4zdU3GXXEaV5SWdIoa2POq/DnlbKDjkL
	 u033JRehKatumYIRq2SjRYyF3UzCl4USBZCqpq2Bf8iqtmXopCsPDBZljX2wBCdnDG
	 lG09OSzZYCV+dYCRMdZgE3lhMXN9wIl3upMo/18w1i4FooMGCMm5dPrZq/3tl5BVUQ
	 jLccMSt9kT+0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDBDEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 08:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168811278869.10432.12777882785229153420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e007ce098e1b298b9cc025cb7880c3b37a2b8da2d04a1c11d0bd92a68dc763d
Date: Fri, 30 Jun 2023 08:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688112788
