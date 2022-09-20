Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEFA77462
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A810C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663689653;
	bh=EXAx5sOFOu9RzdFl8st2sKhNwUA4ffSpl6JUglwY1IY=;
	h=To:Subject:From:Date:From;
	b=VDgubhPARMTxUhWgW7ijwa5B/TX4hgcJJTu0/IHnjGTTNcbg27eaND/oGoKdUvz/b
	 fwmjlHcobpHyuHRFLvPJmisjUfWVTobVa0L817vWFRRfsYENnAw36MvLmCqdZO99yN
	 yAcwEa13LubSLPlj+eNEsJL6NqtD1Nxpad5NQMu/VJDXDjOLVM55piQMJCy8FsatCk
	 l2b/8IrjSGUkYAcb/ABneatneNbL+lwWsohe12tS+2fiAwMoyLdRYD/HJ9PUfHKZGD
	 pEN6XOUiAcTqy3CbPf/opFSGwOZCi+UuS52WhMOqXb4WCaOmrXWbDo5t/LZs90Bsj9
	 MftCfeDppeCzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535F9C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166368965333.2365.368421580281725617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 817c2f184c1a98236fe485125b68af819085cd4a75ee9dba7407e7452a8455d5
Date: Tue, 20 Sep 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663689653
