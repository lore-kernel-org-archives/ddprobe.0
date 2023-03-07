Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3623110790
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 20:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACC2C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 20:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678222205;
	bh=nk1zJRF+tNEqQh0zmN0j0n7IzLtFCZ9yNvphF++JxgE=;
	h=To:Subject:From:Date:From;
	b=iQNpPE084AxLDmxnREhkOM+pq4g4YBvgoMOB54NuFnyaA4UJ8tXT6Qn1OWJHJ+9kK
	 WAct2maC+EH8iN3QW3EyAPPo9nmi01+oC6Oo7H0xscQYcAudKgPEf/NpFS/B4wYJSP
	 zLRNOEkzYOfWsdNItZic2w0oAR4koy5JwoUXAprVRCKyjEHzZ1dKUKALW5kRELD62M
	 b+Qm4Fi5wqoVxObaLNfmhW1UfezOSWusajNIGF+aXOIZuttfJ36qZTeksZbQ/RnGzx
	 sH4OokCxflRQH8+fuxriJ0hnwwrvS6SQj8vciLYzJ1mMZeCAfLZPnkzqn8YHtAbHJ7
	 ggp2KtqssbVww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C80C6FD1E
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 20:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167822220572.12196.8093263914066834422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7437b7437e0a6b5fc36d2d7a3b155f1702b6a93da11a4d2d85efc085edcdaccd
Date: Tue, 07 Mar 2023 20:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678222205
