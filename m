Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A0B362
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 752C4C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664319653;
	bh=SCCGRjqKUyahJro50Nb9iHCfM/b5eHoEh39RdXnm0g0=;
	h=To:Subject:From:Date:From;
	b=RxE695hkXnReVuRC6YHm0mODY9Whk3LrtmQXh50g40tbYGyrBTavMsZForiFs2wyc
	 L7lssNqakePG7X98DKtSUuEfB2YhpdC+y/MYX6EbbzvTFsrdnyStsS1KISmgMpuNfu
	 cF1ay7Tmj9sw7CiGeYpvRWldP9s9U+Um3vKwsWNXPucqVcItiTpH31rDmOBo0Nl6pt
	 /xcmy8CN2TjxYPhaSAvxWmIFwtnc5oVnr6le2n6Fow+ZYxNzUEdiLrd0lxRhcRiLDn
	 NT518Sk2zpf5lSU6JHyqC14k5zFi8z7sdkU8czw++BLP1NrZ0lIBQ5jHLyKYyiKIGb
	 qqlcjnDuPB2Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B91C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166431965333.2743.4820061949326313123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c5108aee5dd35fe309afb62c9e566fcc1ca74a3e11184766cb80d3b0a9cafd9
Date: Tue, 27 Sep 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664319653
