Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516CC20E6
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 04:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bavjxpvf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF965C433C8
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 04:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697086628;
	bh=iEqr5tEiy1iHf9eJEBaC8MAjnBZpO0AnYQ65VNKBf2Q=;
	h=To:Subject:From:Date:From;
	b=Bavjxpvf+aSK/d7wAa8DXFymNHFFhkqj3DK4O5wb2SKaS9R+lI5fwdox1XpzWnotf
	 LLBp0VUwH2e/DxP8vRSFfwxCFkG4f8Zn2MogeRP0SNtbfnryd1L/XOgGGRVf1815MO
	 Vip8Mmad2S1XghrwpgUp4WkYn8Euu5B7zLuSCaoHymnJj/F/m8Oe+UQPHehWb+d9h+
	 CrmSCpkOz3lqh6nrW4x7FuhnYMON7fCKU3Ma1DoePTySwOR0749Qd063LdfP0W8SWh
	 POxZYeQ6FjEBqPOvKxcJ2voCT6DcgkX8wLAK07gKv2Z1MetPY10TSqQb4mIsgjarhq
	 d3O+jvz5NYMPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF627CDB46E
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 04:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169708662871.19619.14623645103842768659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a2bfa746638fac976ac182c374ea152817493061555b220c39a758ecf27a043
Date: Thu, 12 Oct 2023 04:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697086628
