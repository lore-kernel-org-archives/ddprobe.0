Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF35663B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 802FBC433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672033287;
	bh=SPyWcK87Sh/ZlTpzhaJfk+nPDUH8tqwt2ZdrtKVK0sk=;
	h=To:Subject:From:Date:From;
	b=XN9DCuh/C6NrnV8gJK8XcpQ0RdthO86wVuyxYuDkkw4VO0IO/n8w32lonBSl1kL0j
	 Mnz5cXSDhCOYf8z1O1NgeIgK/dqQNMKNXF94VSZGe1gvm4YYmvcmhrOgQ1zdUx95bB
	 2wUriulCRvHpf/jRuDStqyTMyo/1/1dN3J4RUqJAslsfcb7JijgELPX5aAqrtaC0DL
	 c1IsWUnRXyj381rbW+9VrmTr1kQ3Vvss5UpHxIrY8ugIdDgz0HUk2wmIvgcirHI4k6
	 9YgsP+Z0l2Zcj5eEEk68/HPKo+BydseRzroqfGkFqmB2K4KGMdWCYAxbnSoYOm8x4R
	 5AJnTaMqc+JSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66523C4332F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167203328740.25058.2988689565754022996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7979aacb1c670912936244b8c3ec0c1e79e90e82d1971898df3366d52e1cb4c
Date: Mon, 26 Dec 2022 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672033287
