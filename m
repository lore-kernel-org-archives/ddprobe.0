Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B7D23A5
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 06:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7425BC433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 06:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661494252;
	bh=VLAv6bacvX3I13Imz0kj9TfAKsVCUfGmQvc0PiO21j8=;
	h=To:Subject:From:Date:From;
	b=Q+HW+lbAJXobYlOfQBXTLAhdcF6z6Mo222SM+fa/PlV4SLIaN56avu9Xbl2vVc8x1
	 jePLrN+uztDiu2jkxnrrUy/qgkmKl3nssdVUkqPHv3c6k+DAvnbwNWx2G3I/79PG7X
	 BDa2VBd/pF+ZCRF0x2cM9iD//qGlNqqRu3URXnWBEhRScYSkwTBP0b1fwb0VHAxcPW
	 xMEthD+8N66lBVlSkZ7zCOvZ+ZUSrjFdJ+1MzjrtvlL0Ix9zOAksxXpsM2KiduFy2K
	 XTEMkKzp2WIsdDc5IzQANJocH3DXfBWc1vUjhKTJQPTMkE2YFLZ+0LI/n09m2DnwKK
	 qvuDjuE5IiXPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55249ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 06:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166149425233.15623.6155984455512000362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb6c2c35b9f9df9b565b5659e80ae4ab05460f8df8c44357b9a9311b2a878bb
Date: Fri, 26 Aug 2022 06:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661494252
