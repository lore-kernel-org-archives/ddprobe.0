Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3348C00
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ND7Pnqny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B37CC433C8
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699932496;
	bh=E9/bYTknRL8joRce8CTLSsDvCUEfhwxiszjif7ZPMvI=;
	h=To:Subject:From:Date:From;
	b=ND7Pnqny3ISMQjFN0YFb+XfAKoWRhmvvg7OtuFbqeyA38PmVqGDC2uOTTiR7UPgyn
	 5lGdrx/7B8KG0RaCStxVFcOkndbFJFI6PnR+ucwM/I2sw18NigA4ZcWdN5H1tgCyaB
	 pJ3PcEdpbkEFASGO5oKvlYcMhqs7rMsvE+LZjDd/ter7GyoN1kMG2lrgGzXBJzs8ID
	 YBXScYl7cQgUWOUiazfDMTpP8RUo4lDI93H5hiTDkqfWSziZyTkDNH6w5PripfVhx3
	 6e1p5dy09Sqp4a39RD/0a3u+NExly6RlPt1eR2hCePK2b2AQnuN4v6NXZK0Jel0kzV
	 RQgYVGnvn54qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70A6DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169993249643.6302.948060698011228508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa49b276b01e5c31905e48beba897b1319609c675148ec21c6b7ee18391d9de
Date: Tue, 14 Nov 2023 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699932496
