Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7964EC8F8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 18:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E079AC433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 18:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687805588;
	bh=uINHLpPMB28g65gNiIGI8UrWqUSq+KEbMWm9vwmpcU8=;
	h=To:Subject:From:Date:From;
	b=U1yNsHqNNVmIBbdU4FfsSWlvdULRUZzfHJhM00Ngg3bbuylMZjtZWKRgbj5PsIqII
	 iz1ASxNQVtXVLZ+H/rSNMwDsOK08CTDUDf03RvsELRXfPKjtGoukXmp7zPiuz6Kaq8
	 sKzTmqslzn+OlOtBSWVUPyHvNiVx1iGB2vya4nNsbNWQ8skOBWUeC2mSajhkGmXwk8
	 wcx8dD9NdS/ubgIT+dET23XfWIqdKmZUDKUzNXxZNIczQSUNMIax6t38kqgHeqYw+Q
	 2gNPlk7BQuO4GvCccMTw7fY08hXBxtQmBwnBjOrX4Xtwtvx3+gYjoJmuqQbRffR7Xn
	 L+FeF8e6t/8Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F27EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 18:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168780558881.30129.13850622806274404759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d476ffd857419cdb4e1bcffa3751074063a84bf3a382a6577bd34ac99358e83
Date: Mon, 26 Jun 2023 18:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687805588
