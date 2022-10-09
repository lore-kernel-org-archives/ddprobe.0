Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C11367E
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 740A3C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665317453;
	bh=uRj88SpE53Q9RT3G4c6/kOBxTEetuo3KABy6LX+kcK4=;
	h=To:Subject:From:Date:From;
	b=H4igQNI0aD+Bubpapd/20Wtpem++4rpg9zI1/99CrmX3+ytUcNHPmxZkj31YfC/n3
	 cVtDoOjUZr0SE4psUrg2CP3QuIIdTfMf67n8AlsvVBsKAsgn8vuVnd2WSKS7qpPFad
	 Ef5XXuxitiMX4e+XWljU70c1j6DlxBkZdclB2X+JrX0qOOSUgMpYwgoKc+kutMgtJj
	 n9y5lmtFvOnw9BIQc39mCLNYbBUvWbSwRtUiK68sj3FHXgefTxNKf5FVYfcJ99ongZ
	 CUEaEUdzzs1AVzFaGL7ZMo3pw9fZS7PF/h0CJWctnHqgoS1jNa+Wpzw53RSZawA+Io
	 5nGGBx0a0+Ssw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 538D8C433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166531745333.7871.11628252100790862881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8e8bba52fb52fc6a55333cb7e65f3c7ed9ff68b8d117ae096d291e4feb84ab5
Date: Sun, 09 Oct 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665317453
