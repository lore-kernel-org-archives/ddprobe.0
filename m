Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE1B1C33
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 08:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBE7C433C7
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 08:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690879328;
	bh=wJbQ42YQUDI7gZwccmT3wGR5pGB6jIb1O+TvIiSrNdw=;
	h=To:Subject:From:Date:From;
	b=j+9kWMRUzV9wJtVVxS55i6k/Kinsc6/BD+zE8Xm+2zvGuCNevAMJ2VRIlEy+9iE+r
	 4O/r2y221Twr+1v6dcrK7H2D3lJp6u9eJ7vNMxncOVfgf9x63h9zf2w6N73XceOmgy
	 OJfRGyTRBv1XAb4a5L+beRXrkZ+QmHaGqjATeddpDTPLlIyQufDFLFTY7WOrRy0pFg
	 X02l5Py9vfAphn1Jr/9aIXC28g2AS/mSYBli6qYeI+7qqIBAfPoDyILyGTAKrciJOf
	 atUp9ku2T7Vnr9ce39ThJ70Bhfx62HkjWR4drbwZQptbka/VLZEh2UpVg/IZqadETg
	 GrbVTik6aDLEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D7AEB64DD
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 08:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169087932872.23705.6360816545360953203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d232d0c9f9024e64b2a237e7c2d427e773664d893ccdba3ded39dfbf0677fd9
Date: Tue, 01 Aug 2023 08:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690879328
