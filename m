Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB78B23AE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B1C3C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669284654;
	bh=JzQHLL8Ca4zLeKER7/+yg+Q1GvUE98QIh7p0sL1BCbA=;
	h=To:Subject:From:Date:From;
	b=SmpHF+tL778J8ABJYYEMv3Z2hkxVqcS7Uf0pxGti7S+0qHrxd/hUG0YU5Bz3nev4F
	 D8JUL5L/CGUxh2kUaoJry00y6eCvHjaON1IE7pBpENJym7mMcmMdwS/v/Vnxi5fxX2
	 lsJ221jIUUZ0KdekhJo7pzBIZQfd+YDOnqANZ+JS7osZD1EcYgDknlqBfRVdpUuODT
	 wIUs3wBUUEJxcKUkXMKf0HZ3ktREl5FBzhTZ+Kjxl5sB9cpBu+4cEqtDsiZEzbusnb
	 MHhB4GXfFVJ38nf8ZnLIdol67oGBfA60GlRGxPhaesESxVojDx1bnJ2lTRKp7CX0+0
	 hGZXXSnTBeXFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 506B6C43219
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166928465432.15235.4742945070923414608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aeb7b10633f177dff0764d654e99640c250eb4a73dae620a9cbb67d23586772
Date: Thu, 24 Nov 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669284654
