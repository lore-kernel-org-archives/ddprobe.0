Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE124A840
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 11:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF64FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 11:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684839786;
	bh=UZT9nPdgWMQiHMDM1LAT8RxWSlUzc1oiawtmT/igs6Y=;
	h=To:Subject:From:Date:From;
	b=KDNWAXPRd36Fu1ir4+eQ3ct9XqxNWkFpBD+3Wsrs0WKjAlMm/JMGJTIEkdq+YrkhS
	 9PxU3JGeXnK6KytJbYWLL0vK7M2I4pn1SThYEiuDRClg/pnYWSaNP1U3d6q6KrNZR2
	 /8fVFKBctP6kpfya35IU+NbW8niSFDu1gZ7izBJv64GRmaYD2TEndm63kn73D8H/dv
	 3O8u8EH1+37eSoITmjUJId9GXLCnxCQrSA2H2jqjgH5o2leHqnIMqVD/kKpHtXnnMS
	 YpNgcOHi4TQHNZLhHgYZV3xKNcVpAibfXj0Tx/6iVTU1TMV1FSEBsjga0jP9mwjclF
	 EsTQrLu70mrRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C607DC7EE26
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 11:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168483978580.7596.8499234663869199214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7566b19bae3f81006e6d7c8378cf1b1019309d98bb741dd5078f05e5b481bd0
Date: Tue, 23 May 2023 11:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684839785
