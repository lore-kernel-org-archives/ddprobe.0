Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7147B
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7324DC43141
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665620453;
	bh=htvb0MS5zNmztPCClG69DCHtXN7svC0UfSlS+cn0IUM=;
	h=To:Subject:From:Date:From;
	b=TfTaZH9eFAPxScBK3F73osbRkOMGhW14cZ0WmdFu3zXxsfzmwoPAXvPCXN59jtl77
	 AqMezHYYqVVezYLp+I3Y0jySn5pnPQGws9B4HTjjIJPNeMYaN9Y4rOBu96mMCMjWMT
	 WCvi3HWs1fhA7G7Uh9sCnAKxdFmPIkA9i9ApTwviiXipv/ngHjgrSWmIJwdgKBAD/m
	 D0LGf/HrIrVBouIzcbJzlulgRqUZ0NOAdIf4w8CQ/YGJqTPulpygLb6oCZqBEAfXy6
	 BatBtH53qeWyKJh6QfPoQlojBtjnDIgBYEDH0kD+YAXWNh6I+rSHbljELrza56Qkvi
	 sQ4cr/kC2QHWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56663C433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166562045334.15311.9146363867021018930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ce98c10c8474633a3cc68de12df4e1250749b12778e7ae622a07d79d04998f
Date: Thu, 13 Oct 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665620453
