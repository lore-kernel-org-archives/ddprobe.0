Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEBCD23A6
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DE7C433F0
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673371887;
	bh=30F037ppm8S5Y+0GsMy3YrzVUHF7neGeZ9Z4EmKu4JA=;
	h=To:Subject:From:Date:From;
	b=J+TpOdrgER+k0F4NRpDyjEMrvKShGvETtyHzVA5SbC9qoSad2hdu4WD17P7yvA8vh
	 FsFVZQO68RWxgjSpS27VIXjQcFnLxm5WxnCtSbKNU+/8RdJu5jx+QrCi4InKm2FIpQ
	 Exy2ztLzmD4fx0mD6iYMA56Sk64l3tQUe9SXRuyrs3rgb/CVRzuTGh71AnjA9LkRyG
	 vVMAl7Nizx0cMwJ46V+oJoqS19qkxvq1joPie4cwRypoZ9PK2d3XqwvrXQHNPhjEl1
	 505m3U2O+FJ6bXJyloCHhEKyCPgCLz7dmKRFSpkWSu9GUY4jecO3p/+/9zcw307Gl/
	 /BHfk7RTbyQmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 829C6C54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167337188751.8739.15653757158567646217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 063c25269b08108a60e01faf10468744d25899c6b330c081e045a8f3790ce1e4
Date: Tue, 10 Jan 2023 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673371887
