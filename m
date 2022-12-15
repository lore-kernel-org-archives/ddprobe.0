Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB01117C3
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DD59C433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671069687;
	bh=BzGZRMYVQY3qpg6IfeWCYbt7mLn1p7tOMDQjqbnwGd4=;
	h=To:Subject:From:Date:From;
	b=mP9xz8gC3wIm9NVe1fmpbBSlHvyeJ/hJBQkP7yjlb75gDNmYwLbiJauDC/S/6tvOj
	 lzIEhEKbeCcWCRGNTzN9/WffSB3AgVdmfXZt3IrK0LmBm3ll3wLhS1nwsaHtdLiooZ
	 5kho/d86HefMlLebaOdf004B9QMyTJvizRSR1uDX5KHd6UmotYw0jgWnbRH7Bt+khY
	 DNdSow02MeG/B5GHUMjRejgFAJiksfOVjeLNdS048cLq+FQ7kbVFviAUlzuivQtwia
	 net6GHbVaAmVxDJvDOkJb2LLg/c9Ug5OLY7g9pdOwJIOrm4TVIpmDML/4SAICeLEHP
	 7uiDMyCRBSSBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 666AEC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167106968741.3868.15254722381633265944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e788da7eed04fd2f0f0b62c2d0ffeeec938db591dcaf91aadbbdf63d8a1b9ae
Date: Thu, 15 Dec 2022 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671069687
