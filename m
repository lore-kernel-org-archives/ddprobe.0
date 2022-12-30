Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C72871FA8
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79AD0C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672387887;
	bh=zEi0VJC2B1Yf9wkXL/rH05V9cJ3sjFEsuqFWaP+velE=;
	h=To:Subject:From:Date:From;
	b=NW0jtAxdUZsjMNVFT6YNUYjIwXxazPd3J/Q2HYOcam2qVdAgeHpQ6e8PCe2mYh8ew
	 hmyv+al4/2iM/FBjH6U7UfkPmxCiedLsWPXuENTX8159iZyXuC0UqQ62Nzs7VfWrAz
	 b63nsiZYNxgBuCNczXuP15QKaEhO6Q/QAOJj8kjc7ENzkmlVKljUa+zj4VluEYFxsi
	 gxfFq/RyZ8Q/TtT3pkdijmmOjxpJK8Hgie5VeAxGwBeKUTvmhCgQYNFvt4MYXtJOD8
	 sl1Je7gm7rf6kpfVieqYvUJLQQ5Z3a7F0olkSVRYMF9KADsgdsoIsaZumLtDUeNwGk
	 4bO6b1A6dnRBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF3BC4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167238788737.3716.3229185667304893033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b88ca7280f4790a8ae39c863a4a97c8943724f008ed70ff67ef818e92eb51362
Date: Fri, 30 Dec 2022 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672387887
