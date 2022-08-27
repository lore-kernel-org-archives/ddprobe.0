Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03C415CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 23:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 793B3C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 23:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661644252;
	bh=KlcCOM10cEFjmSjdz+sylqdfDpguh8W7J0Laf0lWva0=;
	h=To:Subject:From:Date:From;
	b=EA04InRg7V8tBD7RRnPlZ9243fDKqVoflWY8G2ajOHl+1YFLdskYUFY2MREMt0HBU
	 Imwg8rEykFWYvFHiw8G7P/Nq2dNZaO1GbrliDIRiIYazX5ddh7x9JwWHJGz9RwBubz
	 2zsWlGF812V0p9ZnJ4wYhbsblDXDl0uE1xElWjYyJ21URmr/xeCmPaDSeR56kxWDhV
	 mU8vDtk0QE85B8Nexv+mTEAilRZXbkqRnk+YjSnlDpYb0zR10XOfATLGZAJW/m4Bfb
	 2c1RvqLByAoeXm4lI3qMKO4V8Z63c3IWWPv+Tl0Tq2UMuVUSGzvAXyazH+Qj5aBPL+
	 g7Ic12InMGgMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B0EECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 23:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166164425237.23087.5834002194105628716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2de81a786c568c3f99617caa5cb921d3e609d586dda4194e925c66d798d712ab
Date: Sat, 27 Aug 2022 23:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661644252
