Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D072581
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 13:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B05C433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 13:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675864205;
	bh=D0LNcaI0Qwusws5hoBy8L/AzdHhkodS2F1OIbl/9VlY=;
	h=To:Subject:From:Date:From;
	b=eoprQKkVGKNOJr5tfJ8Fr98+/o2lAws3PY1BQ5WzZMtDlISc9fcgSV7Hb2wSAoWg+
	 4TmvAZvUaYI1PREHoBV2tw+pDsdnJgcTyCpUQRhmWrRfHSSZaAZcn+j+qlPGYHW8UC
	 0xgNh/S7kcZPC2ZLywH39hnhyzLeFdaYtwIHFqahWcFxRRC9OwU/nry4FkyrQrw3Z0
	 lLrn4W2E+KeY12Bnv6AKXCbgWz6eDuUjxqToU7Wa3dksI8SomQsLRheXBCYkaVIqrd
	 5dh6sUNKl4Frgr37iGx/w6RaYHplQNihk5ST3F66Did2Ab2FzZ0H9NS/+JTDd/tp+h
	 16KHMqXbl47dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B583BC636CC
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 13:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167586420573.22586.6743015237819791017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 785f1192415ab751f05b11d86cf0c0b9685e8417654930a23d4388728417dde3
Date: Wed, 08 Feb 2023 13:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675864205
