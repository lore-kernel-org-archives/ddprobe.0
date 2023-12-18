Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2188019451
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLNbID7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 773DCC433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702897096;
	bh=mUwpEGreqm8ws1JIwoHJQOHodjTnzQb15hzbblVwHkQ=;
	h=To:Subject:From:Date:From;
	b=mLNbID7P1uIFSv+GxvrHUUJJRhIpVObfpAsGrM0uMtgAZHlOJ3IMpdYSAORKrIGD/
	 CCjbaBBAxnghCKDYwu+jBtU7ZuhmVjgf/w0Iuo56zf+OTah7OfM3s2GwPFqj03WEWg
	 iCX9JzSMKQbX9PAODhKc7M0J6j/2K3m1SyXj+O51SKwJ9h7WNbKOzDFFRBTA9Qi9CA
	 VrM2q7slewpDe5ErFijzqSVFe1ss1GTX2Her4EtDauAkKBkq7LrhikjrH+Eo/PXabZ
	 ywkYRezeCZUSgY+1QrLFYpPD7o1qzPuM5hDrSbPwxC9ywQ7Lz45yNfsc29BSbHTmWf
	 smubfqxsFUVVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CEDFC35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170289709637.20493.7686809730092117200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b517ea0da0fab213eadf85a22f9227ae926658165e198632d9103b4384bed9
Date: Mon, 18 Dec 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702897096
