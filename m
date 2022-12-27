Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF1C3201
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A9EC433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672156887;
	bh=1ZZ/Rir/h3d95mAYENHQbUnKjb/yFJ/aOLTf4P1xUUE=;
	h=To:Subject:From:Date:From;
	b=HVmcOZ7zYITyKVESs3g+tp9bXpashr3gPuQxelzKRfAugAKdGImBs2zZ2mSxFbyeE
	 9oZJuca/V7vNia2nmAIHlI+R7eB+5zTmNVRf7x+10BroLqfsaom8KwCJ+e+KwUignd
	 bGOSjs3vfqnJYHk2Ev8oKvcE0Ds253UFihMPvOUgK+omGK3Bk9CUmYZhqfJPfgfqN+
	 ectNf2xBTl8x2i4xzDDoPxvGhT1RevxvO84Fse4hRwhJZ7A2Ps9/LkRXovroZO3t/8
	 kj1g8+Bbmw1eGCA6HKT0SM9vWfGGXv08bTE8Gv8P2Wet4NknJKlGphTeBjPmHoGwZG
	 U4VP4e/p8whUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 611A7C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167215688738.26149.1068933973670974525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 652ba291c66006d682f5a28b27aaf5339cf0099d63ab29d43e75569659d2d34d
Date: Tue, 27 Dec 2022 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672156887
