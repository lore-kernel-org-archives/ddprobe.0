Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753411367
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 07:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14F8C433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 07:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693813448;
	bh=L8ZSf1tjZuLoqMPY2oD/5UqfAwTIFZ3D6ATER+kV9Gs=;
	h=To:Subject:From:Date:From;
	b=RBh2T97jeftnIT8x1ttTtgScOqOkQ7fCLMV9cvrwukoQHz10lTU25APFZf6prKZ9E
	 Z4UnTxy+r0bDuDHkXaQknkd1x/krgrWh2g5zLS+FRVssCVIk3neplg5M8W1UdctE1P
	 EAj+KDbDdHkeLaTVE+9Fq06aqQNv/sIC924s4fVMqqZfH8oKOj8kasIgJWjAQz/WUY
	 zxxlxqLwb8Qc7/UR89JMNcTSA65LBirEtZidKex10g5vdwvNYOmxVLiWAVKF/AWS3C
	 Ov6YnV8tchB/eJ5+8GTb3H5Z5zYTlbaqt8c20NejndhubTRp7UVHO1LC48QtCfPEik
	 vE1BYxYwtzx+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF05C83F33
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 07:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169381344869.26457.11126974450421187367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd2be1deb849b5d750b57bf89fa2782246406e54cc8607888d0f30d407e89cf
Date: Mon, 04 Sep 2023 07:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693813448
