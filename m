Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFBF290C
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 14:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DABC433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 14:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688047988;
	bh=cMO2UaFCWLXCrhQG5Y/VJZQRtlcmfNdvqkfBQYvivsw=;
	h=To:Subject:From:Date:From;
	b=DccMrnwG7ltBfmEKdmyhhLzGiUknWLkhPxcrcgRJWg8bd5/pRiq8erJiccYhgZK6F
	 UutF834qWLCM1oLltiqO+uPRjPVBySUtaCJZ6y8BReA1/6dR/6gPAil48JhhR40s8P
	 k+gO9JZ7RdecY/nBnLB68IVXQgbfvMfnr+3r/UxEdr4IwGX/rOQ31GXeQ5WmKQA8Oa
	 f4pGW14uElQ6YiMe6Fi8xZ0v+hx4S8lq77ryRRJ6rZ+aqyjnCP1ljE/Fu1d/kacl8X
	 1/B69Gf4HgkpyH10vMI80szkJzBW+WbhIlLGRBlDnxWE+Rw7USSQ6V4Lzhu1S44ZL/
	 qWlNVVg+aqw2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC06CEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 14:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168804798874.2471.14897991706190966317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a12d4b270e443ac0ab878b9c704fceb687e9b04ea322cab397df1122664e4ff9
Date: Thu, 29 Jun 2023 14:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688047988
