Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45913D8A
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73364C433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664754653;
	bh=5YmGF2kAHIe1HHWb9tp9zuNZTHhivc/IqGuzuNiKhhU=;
	h=To:Subject:From:Date:From;
	b=qWG5TvwGqJJDD+QE4vPPOUu6QsQSjg4Q9FGCPsY7Zi0KmRt4RsdoutkMHxXDfFol3
	 MabMVO7sYUT6aNxtObJdMF0TA78S8g0DWDKDcq74Vw62azotjuqtDgZSjacRZGw5CR
	 8saF/cixpL+V28Ctxxzlbw3YfmBCO3fKeuZt4p1yjmvyHgX104VCNCrBODQZhQ6dcQ
	 uyzR6qfBnTKTYFWZAwhLBkI8f2v9Y9oR87ZVpoAjLdU8iQaSthrzVtV4IUMgRXCBKa
	 DQzqPsqEIUhQfNMIPNZyV5i8o14/wAXz8aKrQtZ9C2c/kPn/yTuPguly+iUrAgRJex
	 YXcSiBgcCRnqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5521EC433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166475465332.26607.5393834790735958137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f025cdc5a23ae70c9deef5d1595dc5f7a9d37e32e7a9c567ae204500d11f5f92
Date: Sun, 02 Oct 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664754653
