Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379F7881F
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 09:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2E4C433C7
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 09:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692004988;
	bh=iZXOZNqHIpTXwKpMlozU58n5d5Ir5VUsyLPoUBUzLfk=;
	h=To:Subject:From:Date:From;
	b=HG7A6UBrM5uZz14o9IFBSRSG1+TH9WSmuMVtcUmsergR1L0i3DwG8OLAEc9ZsxBy6
	 xlVnrA+dJANB9pCsTEMubRN4lJ8/S6wlZlJ3oKbTaMzhClzicjGRoMfgOGB24ZMKAR
	 KFNSbW76gM3CLhnHcnplcAECs+N2loZToANKvnImKmUtCpFpZgBdEsWZPtjJX5dlZ8
	 mv6OEdDlJ60ee4zVQ8Y2unEoriyfrk1whPM2Mz+km8/n89ggt3tmpECDuanfnzQV7o
	 jjF9CsWawLWnnMy9+NwO7nADh9AE75BB5AKEh6HY2yvan8z2p0k5dLBVo75K6nThG9
	 fqdeM8+KPd9kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A337CEB64DD
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 09:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169200498865.16819.17663687464349994356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd0fc6d93f86f6a422fa2ddcc5399b7ea7d3461d6864d11a29f489509ca4beb9
Date: Mon, 14 Aug 2023 09:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692004988
