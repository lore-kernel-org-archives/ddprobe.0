Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10E7137D
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C19C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665744653;
	bh=JteOR8EKtxDMhkyn3lBdgpWgpZCHeP2xv5wwHoOzNX4=;
	h=To:Subject:From:Date:From;
	b=pl6seXPHJZu07FdKPxFUheK6LJby169XI3CW+jKf5SBuXWWTdpP80g5pYkic7Ch9Z
	 zvNODXwr4ik0GDqPvaw6jD9z4Qv5yPC0c7eWoHaszBVtCLLGZ6+udd7vo/ByDGGfbq
	 OOj8zl0EKYw448TzPemA73uGLRFlB4kqZagQOaX1rY3yY22ERVaS7kNk+sH4NB4HkI
	 6OALjGDte5GpdKkFRKkn1Ofb4NbaEQtsjr1kyLimyoi8KYvZ/DLSCiucTpqbOoF8UO
	 yJgnJCUDIhBQyigC/0XcpjSBg6f6hqlaabwrjwr6SoM16nGbLA9kG/IX7qpovLEHqu
	 RThfbapDhQC7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 550F4C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166574465334.21833.17885379635733671622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7aa9bf5f5ace7f8bc0951d1222e8548ae086a439c921e30c720a7a1be5b09e
Date: Fri, 14 Oct 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665744653
