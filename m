Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1DC7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 855BDC433D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663755053;
	bh=gg1vFtQrl8oF4HiI60O2PxAPLQxuWgBwKIcFMqmFM8U=;
	h=To:Subject:From:Date:From;
	b=TAYS7WQUOSW4v7H+wsajC90uMA8fsYzIQLXwL1BPRdaIMzUvjli9sVxN9uMKV1Uvw
	 EvzsicmZNX6WMzZIeY2Th3xb2O4O0hTCJKd3C+GkiT1GI8LE6IlK5mawdNOvltHDXY
	 HwfqscOFTCZFTiGRwtqfSmA1fs5lTjyaikVeAt/e40EWyZvqo52LFDTTK/oC/hw9FZ
	 6f3jSk/3DlNNr8kwweAmUrdch9cukyvTov9FmiPao+ehX6qdIFWKSSkaPMJq6cEN9J
	 RDvvyk+2xR5nupr2UQ9vk+GdoQzKMdaDEGb3taQzsZwNOu6Rpoz/gOLft6eWtpVdcO
	 FQPkFIkWCBKoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6170EC32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166375505339.29800.12838664681309759159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d69f402a22bcc3b6af345ee862f6af2c1aadb49048f247bdf643b9cdd3ccea5
Date: Wed, 21 Sep 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663755053
