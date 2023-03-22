Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A682584
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 21:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E16C1C433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 21:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679519345;
	bh=I8K9xmD78Fw5mWd/5z4sMVtujPD15Sc97aHRLDZNxSQ=;
	h=To:Subject:From:Date:From;
	b=Ghuy/NvTp5E2Lnjzo6mTH3AH9XWyK0WABQQ+x2RiTuLbljBx5IIB7ciM+kgUi29vh
	 2U/uZ5A8iwMIpHCK095MV55plSlyp5JXCZOAN5kheeW1RvaSkxDmyjAA4GAaN1oa8J
	 Aw9gVdPJiu3V33EjfGN8dNnJ7jr21NHe0T2OIxhg2FPimrAX3QChh4OYRYLxcC05yJ
	 +m4rsL+/cobDllkMF6Q1GjAhhmfXN/ZUQopjZ22nz/82yi6SBFOVA8ObLdooLnpDWA
	 uJG1vfoxxdCnTpUQYsB7OPx8XJufEee7j8hWhuAqIRgXG6/R1ofKBJHEw//8H7FWlK
	 7SPurGiBkPabA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE6A2C6FD1F
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 21:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167951934577.7764.16473164192754389995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 925b35eeddc73ae1d69ad89b1ceb1149cb304ba9a6b39afb897e3dcb3fb93f02
Date: Wed, 22 Mar 2023 21:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679519345
