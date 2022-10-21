Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89CD7E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 697FEC433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666345853;
	bh=suq4aYcm3dwB67xvHQs2IKLiQimHcbV4L3NcvQqMD9k=;
	h=To:Subject:From:Date:From;
	b=Q55pjlBVgY7orfeT9rossEKMpoPqafBXpSpWb+zGfFELsa3bggF8vmAUplFqFeqku
	 lXOpzIEy9qGP8hDU/Lu3QuEayvxU3QmmAuMYXfijjN7KSFlLG/1BFcUlWtxzKDjFK0
	 kJwY2q1twNazt+Gz3sBltnAWiSeyPmDFDuWerWVmTIPVbLn0bzF+0+ODaSl3i5r7uL
	 5duoQyi4+8iz4WfIHcg5Kn4/Ddqi3I/UCAZkNf7JrNomFPCHYnHFWDORaAcHgjRs16
	 0M1CO3bX77Ywqf2Onz68ge3jt0pC6XvcJGsjINxUHBjPH1KDT6eu0APd+At1AJRkOe
	 eFonP0Zk0CsvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51AD8C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166634585332.25010.9326182245622676576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9099ab483ca0005c36b3ebb528d82551b12d3041369c0a5a0b0ed147beead9
Date: Fri, 21 Oct 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666345853
