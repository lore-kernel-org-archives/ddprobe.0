Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7C27C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6747BC433D7
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662629453;
	bh=5aRCj6N9TamBslt8OvFMWn29R1Zpn6OKVcnrqLbX9Ws=;
	h=To:Subject:From:Date:From;
	b=FIztHdUCUn3o3tSzZNu2D/PX880KLzR55SS2/sVMPNkYKE9isLjBYuQiZGvAbQPx6
	 Vy48FvwfaEMnGEjSFdvJaRZugQaSrpjwu98OkQn+LJT4UrTQqJiY1ABD6WR63s6LTV
	 zaLJdo/0gtgiEQcOyyCCrdnNXeMavZQd5OgDBGqXbscPn6lXNsJoqHgA5FETB2T16T
	 ijEPdVAD0pic1zdXE8iDuG7+61Y4Hu4n3sW6BRatY0/KrdbQkwV1plqoF3XB7inwUy
	 e9XhDa6ayln1ROvcbqdIGzeaM2bAlUrvy0LYUhVgrSiUCPp0sIqgqiZW4/4W759J1b
	 e2vUWuuS6MxKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51415C38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166262945332.21169.11510439975585946421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c0d8f18ec3a06dabc458c7d0bf23c3309af6afc3779df465fa36d3b5a3faf0f
Date: Thu, 08 Sep 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662629453
