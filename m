Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76DE617757
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 15:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7B2EC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 15:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686324965;
	bh=alhtElSb1u9JxWwfXUSVtZ0kRRf1kZ/7Vp3mhiOBMXI=;
	h=To:Subject:From:Date:From;
	b=HhNep2j8kMdUn9qYieafLNUbHWI9XLdw9SYJ2M/sceywhRZSGUC+O1bJepvJy8XUC
	 al8fS9VyBgrEcvRiwttEA7QMDXh8Q9sUH7Q8xAJ4z+ofRrN9+1NPqW7777yCALBXs/
	 wmdzzSaU5X0Hxqdd73pOjcrXnmkNtMX5QhEb+uab/6Xwb2RiywTHgaeuNjg5uOBPlQ
	 6oWxJXpfpdhHj99QFEmsQM13MdDHLUVs6C1WeKkRVywLJw6J6NE7Z8lOaH7+noUbWi
	 mg79ppqHTcTNRc8iIbqv54AmpMmMiptD4OBsTLFr/T+CavLzhr9AsjyHikKJ6r9G/7
	 DbDFzudcb5ZMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA4C3C7EE25
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 15:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168632496581.1270.119028538361499302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2edabf0b08c4dff5636954a5229c8df7cf4fc4d7768f70fc3f4c394184a777e7
Date: Fri, 09 Jun 2023 15:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686324965
