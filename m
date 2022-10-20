Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4FF47E
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DA17C433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666291853;
	bh=TT/uP7eJsP7r6tBVsUGMNQlSRNcdGJvga6jg2PyX3j4=;
	h=To:Subject:From:Date:From;
	b=X1SqId2b0LkW4Sx8n5g1MZcDpVIyPYkHJkK1L/NgKb8BGACGDtlmKHgbWFMn+Za45
	 rrKaZ9w9IwDnWG72cqMl2NiGlEairiLi/xJugP3jqsge1l1Fqw6CVl8SOAKvBLzZ7/
	 GmuzdRGSvrys/SpMXLwqdxMOPaAFNGAsEMq+JNS5fFFfBAqszAMV9m98eIXO4nxfqY
	 K/Kb2f1keBOp6oJkanQm9X+DRVa72sQnplszV0NjcbbVCunjDLqcqfhTxfQmM6263D
	 0EaJE6r6gqOndJQPEVw5WYv+BF7vURGm7L/OV1Z/MBy2vESrPfjJTvElPYnmtGS5HX
	 n5ixOJQ/JfWqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54028C4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166629185333.21358.2068716281058092040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d27894d4fe6e45c0080092038f62b67c36de82e514645a4f069e8a6cda20330
Date: Thu, 20 Oct 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666291853
