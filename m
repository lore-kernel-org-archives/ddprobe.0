Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75544107AA
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 11:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6697C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 11:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688989028;
	bh=31O26kbf4WMsevqt1SNzu5IilUEmp1qeqi+0SrCjZFQ=;
	h=To:Subject:From:Date:From;
	b=ba8o2h5Mhs254WLc4w6dixgrWcKZkP0crJMUi9AjptBOcOEClF42tLLUVTAmQlwkZ
	 2Y8JuNsmlzL9IugK/NNJ7FEZHSp0qrDhBS7KlwLUFzHrEp3JapxA9xz7HLL93D9DvZ
	 MXvnTJHjQgYfbacBxPsbSGxKAE0Q2ERzuvb83FfJHtzaaN9r7r36kVLUQOBMpYAyNs
	 7fESPseRUpGjt5qW4yxcVXJZRK2FlsvGS+36wkTVdKDunfjS1uY+W5WCxvZdqa2ikt
	 qcLpdU5bUJyFmZD3ckPnrP73snVRx9ivRN9Og0ppIFCDNw0gS29F2AKanHAncyRCle
	 jaTKMRi3piABQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48E3EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 11:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168898902872.6603.3432703048257514017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c86fe77de56cf4b869a76040afe83848792704bda4223b906ff7dab0651c78e3
Date: Mon, 10 Jul 2023 11:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688989028
