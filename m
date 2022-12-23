Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71FA8F63
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77E41C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671810087;
	bh=iJc5e6xQ3peWJdxjTaErPqpzmywo5vs/elNkxfYA55o=;
	h=To:Subject:From:Date:From;
	b=ir1CPA59wuKrR049BQJ7pipGMqJawWAVfE394uOFUCrzVEjHD4YWQfb/alUGcH5FQ
	 NSSMpzkVvjxE6W/Ionv4FZpYvq+rnA75FNy1Wxo+QjOYxArWhzJXeTf2HZcZ+0mU2u
	 l02rZX9uVFN1ZAPmZVsP/qdV4JcPZEgbFkubjqsVu1qdaQmIRlLk0Tp22+gOYfUTDc
	 sviQ47qtAOM8TjqSWUEDvwTamrbjBBpZD+Kqe9GYSC7Y/91hQgA8GM2lGlnxvM4/pZ
	 Lb0+7qPqqxfycEPMpwLZYfTwjdO46HVKV52c+/guNtmC1hxPyY/KcgJlB+H1aPsxbv
	 nSvlzoZU3c2aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B45C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167181008739.26599.1574675017842719108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b33646b76b886bcb4aa65533f3f956e5c00746f11510312f7753cb2f57014c
Date: Fri, 23 Dec 2022 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671810087
