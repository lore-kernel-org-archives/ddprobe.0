Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77AFD375
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 06:38:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E68C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 06:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686811088;
	bh=JT9j3zZD2C9fzqHuj87b4FfxhkaI3mwwLRlji9aSIdw=;
	h=To:Subject:From:Date:From;
	b=Sl97CMPvOq+aEHld/dGSPYGtln96TxXw+f1s7bzo4SVK05DMZkZhPXClqgQfrebG8
	 vAFgJMGkSi3CJ2lfS0a5GOxONnPARIWpABxygpWUJXIUK2PHHvNlquh7fp/Sj7/B2U
	 n6MBam4NhVNogLpGleE+9zKUBLrl1pp6sx3PkudOLIHY98BC0Aryl6ArLdRnzfWh9L
	 4WOiSUVseB/35n5lYK6uf5g4GbNrYzqb+Jb6kh/N9fwI4+NEDsO2MObrRXfgB0Y8pN
	 p4kjGmA+gMq19rvLHnIokZPKDLIT0YvkyId/c8blxxjEvLeQD7fLXf9RP507WooBgc
	 /48kblHS9GyBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B58BFEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 06:38:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168681108873.17927.1803362270298791746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 388e26dd7c867fef1039a8003c59c55fa2211b07fc927bf12cafd02ff64c95c7
Date: Thu, 15 Jun 2023 06:38:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686811088
