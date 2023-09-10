Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B58A49
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 09:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF608C433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 09:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694336648;
	bh=qs+1D1PjFqGbTkJCbE0I5cgwG80lMC3TOUUo3n0aljw=;
	h=To:Subject:From:Date:From;
	b=Mik0tv1vi6RyaAlOdoXtcmc/UuGuXdXHIJ3v8xY3pcGWv3beFeAuZgTN7/6JuO1DK
	 ZHS14012343IpcvwrgvkrnV8d4QYAnSjGTDDrQeW5JaMA1jwKWxFxMR6R2axsdtCVG
	 pUuw4Y/RfX290icp/epRjag4P9kGhDrfEfCyKwMo+cLxzgozwMFGEU4KOf49BxFJyD
	 irJsWL4JYfWE/FmclGNX2zGtxulxj3OsQK7RICuV1mvqRfaCKO2/Awy4CuhrPDy/0Z
	 3tdQiawpWnxkRZexlrwt1v8OYGkYXFmmuNwnfsvyWGK1zMt7yPlH8gXAQFKKAHe1Gv
	 LCXv3LHm2CzvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFF3EC8748
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 09:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169433664867.28309.12360946409616082864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6846ce587eea7d1a9b29a2de9a62c06f3e8494b4e035437efc9dcb073f83b7a2
Date: Sun, 10 Sep 2023 09:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694336648
