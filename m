Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0080D7E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E67AC433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672622487;
	bh=0hXbKqQFdvhUwSaiwNRnB1rXDCzIn9Mbqap5gwePbUg=;
	h=To:Subject:From:Date:From;
	b=tpNvnfsqJpE8MhbTNEBiWsEO2oY5GmH0Axx7ZYLzLXTH5ixxo2lMJvn//XgDg/RT9
	 mwjQTRfqv16E71cqbNoh7BVwyCnPm1wOTNGgZTHeuBivBV+h+j1J1VtxZvmxdiPL9Q
	 fJMPB6yW80rwIfkzcr+68BBxMxQs3JXCMvjTA8MWOVy2IU4UZJd/KseW3AnnbMExIk
	 0Wldi6Ou6dyKxgqZu70mh8T7fkiJU4jcwe8o6nhFrLkSZ+rdm9cd51yk+TdeXWpqca
	 ERVy8MnI6Q434vbkOAGKSKNl1ixjxSPMIzj3PeRiAa+jisvBNASKY9a9jiUb16bVJx
	 4fY6LnWF2mzXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EEB3C4332F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167262248748.12778.3387283280503909989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0f35a6d0c402a3a1a52d3b345cedbe1ed1841f5de600863fa82ba1054f068c3
Date: Mon, 02 Jan 2023 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672622487
