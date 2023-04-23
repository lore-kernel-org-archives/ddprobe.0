Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699F5620
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 01:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13C58C433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 01:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682211666;
	bh=MovDcx7MMGadX4cWjNAj8CeCuh2VRvyok5riPjNzeRE=;
	h=To:Subject:From:Date:From;
	b=J94gDtAi8iUCZcidcHJqmGPjUR9nJBPMgRLV5UAhqyW503oMqjyAqCMrPW2BPiuUc
	 hq3A7VyW6xbT/jDbSEZ4CHQPrtoo58K2SIRYxs/WqM4doRivrUpwyeOhpIDyaIbg+d
	 bN//CNjB3wsjJP9TjW9sehR3pO9WHvqblgYLBkP+X4Sd/9KRGjMei1NFdWAOy7wgIe
	 3ZHBVG+4hpfz+sZNy6fvG6lgp+HFnzd+AWm2X/zJOsSQflG7RKbAa/ZZdovESfahEv
	 E20qN3bDrQLbIWaJb2bURbTVGV5Eqre0QS2fL7O2ZhAhIXExDkoK6VOln/qVcD6yhA
	 fZp3CpLEblE9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDB57C7618E
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 01:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168221166583.12446.4911994405144442294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890f2bebf223c56394a9a3f4f5e459a26b1c53f5999678fa6920eb895c4971e7
Date: Sun, 23 Apr 2023 01:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682211665
