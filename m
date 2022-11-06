Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E29BD7F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81B34C433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667716854;
	bh=8FcdhZUe+K4hXqEfcrj8h4SxdpVSPHfIL0w8/cOlzLQ=;
	h=To:Subject:From:Date:From;
	b=nzc94AybEQm6CAHWqR16aL4HS4DlHOsc42OTF9RsDXUd23/TkEeSWElZFvrdJYG0E
	 CttjocsyUsqLVdIRssm2MLO9VFMHUGDW4EiMUCWF97hFI9NmH4o4+Qs6ZYQTLUyAb2
	 IppFZdCv5EpEpoIPtG+YCfRSPlB64xuHpFzo5+Z+PHVgaiki3dczlpxfBYVeBrYkaU
	 8EX6k+AY647A4eqPFp0jxczOn6xP7tLhFwTx1FW76DQx+gUcN1FqWrC8j9pQmxLqq3
	 Kd2MAoX8pSSJg1/2EiTVJydCaUuDoi4Du3UwKrBlYYRLOgZjbVMco+atERsWmu09wl
	 QiHmlj1HEGS4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D58C433FE
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166771685437.23320.9273226089213519046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7648eb87d14fad906b0a0c9376752ad8fb6a50a29642e1b6ec65df054e71d735
Date: Sun, 06 Nov 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667716854
