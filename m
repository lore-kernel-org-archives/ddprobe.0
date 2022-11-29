Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5E78650
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 692CDC433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669707654;
	bh=vWP/PxzwSZNFW6wX/kQti4bHAS/m0AvGQXX+DQIjE/I=;
	h=To:Subject:From:Date:From;
	b=Cnq0Kbyf0bXCviMqad5kAbtUu533VQLGQeAtsopuj0Nk37BDXR6J2sod+xxOi166V
	 nLkKUZY2ClJIm562LZxNatpI7kT7s5h+8nnA/zQYUSuq8GHw2i2IAZlRLoXgP8Ts7L
	 jEJ/Sx3VOMYD1oxvo8YEdmZgS4Afnhvs5LQcnhWA5Q5HSl/6VpeTbk7wsbQPMBQZh6
	 927K+BMFMJ5M6LJtJg1orNDlUpU9auRG75dmPw/56Pe8bUnxRCh1KhLQCShw0i4gtG
	 S0Y36BYX5ZPkIpHYNf4fRy6yex145ulsPlAxatKR/C+RYLB+InfwDVnkoAqh7X6gv8
	 Isw5pJuFKMF7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51DFDC4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166970765432.3598.8523997014648096324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b997ca4d53465a2b5b77744947884d6079637139b5f55de9fcb3099beaa694
Date: Tue, 29 Nov 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669707654
