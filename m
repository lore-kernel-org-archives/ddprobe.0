Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C537C373
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 722EDC433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665808253;
	bh=FDzhjkpGmGjJ96acmqV5IJYYRWhC4I08zDn3/jW/KBo=;
	h=To:Subject:From:Date:From;
	b=Iyq0K263fCX+xPUK5D30RIuceP43LbH1eLBiTPCzkCDkoLDDEnvr/OQ6TXUylCBcL
	 t7XVvyeVSgcwc0PHoVO44xq+6LiNA9HRMWgdqGKW+dwg503PUrRqfx49f2uq0RZL6E
	 b99ppYKWxpTWPvp5yZHQfSl/TCZThEbKdRxwFr0F3YDd5D0vvxscf94gwIH/Xi5PMR
	 H+ujglqEj1mSQBu5FNkfZlu8eAxOO2S5hgZ6plpX9IAivOGoTM3iKUIi4mOIsIRexw
	 /pK1WFRo8jP9XTwr7AbXNc+r3efpkAhUZZNsn4nwujcsVCeae/CAZwy1m0Pze3rEmc
	 6G43ALWfPtaGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56797C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166580825333.26082.16921344598534339099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b19966b616f0233ecb5124accbf21c2f2425c4498086d903e2812c6c96024d90
Date: Sat, 15 Oct 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665808253
