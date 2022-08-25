Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1991111
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 10:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B123C433D7
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 10:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661424052;
	bh=xyXtUZmBUPmDVqVTzRqJr57vjuqYOBPohGNsg4sbsXg=;
	h=To:Subject:From:Date:From;
	b=VSZL1GuDCsnEGoJZrkHb2t9t7M/OBuCQOWv0Xy90A0kdGlYHNTQU6tjWxhWX59nM3
	 Cmd/Oih92hK+yoj23daisvt/wBAUhRp1+quCuyFZ1hRA8d5N0HIC736PsbUqzCTpLz
	 AsgaZvwH/OSpVLLzv39jLurEDOZhmbGlrY0K1WLYSJdrrCLIA9DDWtwM63CT4KfrwD
	 9QC38JSQtYMHqdgATJj0LD+/IE6SOvCxPR+dlnGUeNK21hj0TG7qFn9GtkBsRYCsTc
	 SWgtwKMdUNVwsV1Kq+m8sTeHyVnPD1sZ4FKZ31SiuMvNl1NIeR5d4JLHlifnlWddEW
	 d1hxiUQ6LDaEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C28C28D13
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 10:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166142405238.30384.11481513111697903961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b23c9723c0731e614068773fbb7c2e751ec3265c583792368e15984af35e223f
Date: Thu, 25 Aug 2022 10:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661424052
