Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B647E3
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A642C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670487054;
	bh=1sQiHx1BiuafWxBQx+wXnAEEBx99fMl1vRr8ujUdumU=;
	h=To:Subject:From:Date:From;
	b=T96V2tPmoXQcC+WSdatSbi/vATEbH/ZC6yhA9xcFFX4sIFKv6FOwn+hlqwd9PPdFS
	 rg77gyENZRAq7PjT+fCXQJcU9Lxn7TxxilbnoZAeZDBs0VuLACHLu9ftTJSfN/w41W
	 pZ6j0S32Wy+rfi8gL0c248hUFAV8TmI41I7jLszjEQCERUrBPx+fLg3pAIyyHgnANa
	 lFCLkZcIXezKUpKc0UESbT/OrVgxx9A1NQFqZI5K4ezILksia8G6sL5EZDRQtt5lfW
	 JmVPwWxq4M3HSeWEYHCZmtQxHxJJDtsCgrGpOBCUSg8llyUQ7cNTxWc4xmbtYao6Z2
	 LPNhDuwD2KNFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F36DC3A5A7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167048705438.11373.16356404425498595980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e949cff72092aa158759aed0c594a704e8a3a6c4f2b46c394d8fabf5437db93
Date: Thu, 08 Dec 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670487054
