Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4829801
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B934C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672152087;
	bh=HL+loPdOAVRkx3ajF6/+87b1RTrZxZ0Ta3B2aDNFsDc=;
	h=To:Subject:From:Date:From;
	b=ici1vXn4EbfWOqjyBL7A/DC02yZRuhhsoK67x6fgnyk8qDnsJIwvuXdjMGDY1ONWx
	 PH+Nweynn05IFElrSEfxVSzEdb35GHEAx4bStvJLK8sR/fE7uGkekDpWSCbTvd15q6
	 teb1rMTAOKIs9jHWkdBUGgTUqR9LUP+1+Bd/VUX3UEWysoQP5oXIui7NO7rzGvdWFM
	 xxr8RsaqQu7IlGf8/xXX0HMxJm06Rq3OvfnCLmwznrYAvihj9CKP+E1okERwyWuQN8
	 mIkJwQ09KWgOzUDocb+RNItlQqhIHZ6WgvzXHwAMziXteae+K02Avupjt5m5gbqTes
	 eKrhUIDz6Yrrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C4CC4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167215208739.20856.14282075306018414887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe43c52f82d21669fcb4b72fe16bf7c020f731a9d850efc26db750ff307bcdb0
Date: Tue, 27 Dec 2022 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672152087
