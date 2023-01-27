Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FEFC5221
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 21:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBF86C433B3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 21:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674856386;
	bh=Kk1E3Ba1SY7D/feCXmbt2X5NWyGJC1kSWB/BErXlRKk=;
	h=To:Subject:From:Date:From;
	b=sna2cPQfct2Qkj27VvLUYltJGrtLhtomQXiECLZ+YB35q553mfazZRLX7bscwUnNT
	 +yn9IyiphwwNKMLG5J1Zv84Dkj1a4Da8P+11oUPdENq05NBB87PLGV1cgcWch7eoB0
	 jrsSNdJquik4k4oOQwDJ5u2ZQ+OYBpzlY6f0op534svOmGaeewWjXJN4+phxXlwJxZ
	 K3/KQGUBvAJ8xjIi7nF9BAbLYLV6Afu1X47pU9OQ0Rf70AK5uiv5717Ksou+5kEjUu
	 YxBbmbast3fcX+B8kkZVB7eiO4w/0Tfjt7IpMLw2qXmMhXLkY9HUQhJbDwqmVprAAp
	 67F08/cqDZznQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC67EC54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 21:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167485638582.14814.17402704443068297176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c67478d0fcf289b8ca0f2464f4f315ac0755b0b845f5bc19a7ec3f656ae45e56
Date: Fri, 27 Jan 2023 21:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674856385
