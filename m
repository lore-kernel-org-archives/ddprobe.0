Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C232CA461
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E294C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669659654;
	bh=bSYzKd6QhZAYIe6voCARczspNAw5cMI/jty5fx+oJvM=;
	h=To:Subject:From:Date:From;
	b=HhLsf52EqvwYQQM6w5WfcpIRboJyEPg94kkPxahoCP2U9oPn9j+pCbw36narRANbx
	 79x7lvOrE08FV8URhb2ez50ryYOMerOyRWmPntQ+k6aqJNLRb4BQ/R9NsK/011RyYI
	 uksYzxle0m6AsNkgmHM2Ub8JcHuUBgsCKjnw0v7aqBXw3/j+9yCHc95ZDKfyp8JmQm
	 w5/IGUrYU8mi7IH/i/mNdw7QNQSJgkxmaw9sLFWPnPkq2ceVIZzK8udpXKJyfpZXvH
	 XNeJgIMVi8MhPPPsVbFyAuwOPNs3D+h+IrSc+/B1hKUo8W27H2la7A/+k+DkLsQ03H
	 V3mvVZJuyBD4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57354C4332F
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166965965435.20400.3391580174041635734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c24b3bfed29f87fd5331858105e3caea0aeaac51660c4e4970f5fdfcdc382b2
Date: Mon, 28 Nov 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669659654
