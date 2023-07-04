Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5564C812
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 05:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF69EC433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 05:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688450168;
	bh=iQDFUlrcEf4+xLqXCUyLAu6SIEBlomzf9aU3/fiL/1s=;
	h=To:Subject:From:Date:From;
	b=DVOWd1kp9/7SqMaXu+yN+FwEQ0gnuJAKXYMKVSOumGRBiXAtMM1mO33Ct4ni243rP
	 DErpioZsb/umQ5KlSLAAiPEHYy06R1nsC+3ztrKABYGDZ4DSDkE0gWgpqbvTKlh7S0
	 91Qskh3cPA5w+H27A2ygM6btx0ybvipiSoccKKk9iMkCQLJOHfujLty+2/ct0tfLo1
	 4Xoz8Go0ayD63pUDMJso+xAao5bjXtRat2/CxPopyyQdc6WCryg10NFz/W+JyycioL
	 KwxMN4zrJRLuDFoVCY6QJoz52p4PpEa19BsR6p9aPN4ZqizzWZtMecJuN65/wwVLRb
	 8WuY9o6/aWuGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A71D8EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 05:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168845016867.18205.7695864845056059371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ccd45e4bf86585c2f077d147e294acd37f8cb8b0b308c3a96d984a34a9f0595
Date: Tue, 04 Jul 2023 05:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688450168
