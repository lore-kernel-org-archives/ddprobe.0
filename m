Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8AF63B6
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 18:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB521C433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 18:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691776988;
	bh=ywLX9YBLDcjiQseykOJoVttkUjPqXloAObq9gJM2vn0=;
	h=To:Subject:From:Date:From;
	b=H1jhvgo9jcKf8lHJZiffApcwN/WEnWgf1PWltA+lDxh08en5t6fBPh/qBEVfUJfaO
	 r3MitzKXs2A89KdClWmf5eQs1IiBJUcD1mvr3vdfaqZNVdsSNeJU8TVQfDv5eZsdpN
	 Mg8KlqS4nLTJqynbxQnfUyGrInbL7AKPcWdT2EufgrC2l0nZ31aaYCkvcNfxsSbof7
	 jECMl7r0udusNA9uQY+PBBQbpvTko2PRKd6GVhhsP3D/czvuwvWDEM8Ih8wqaNLPSY
	 UliAw2af3dMfc+9UxFAxhso4qizT18NFc0pW08TTjcKTe85IpdMCco47dzeI4fnPHt
	 Gbg11bg9QqDuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6EBEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 18:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169177698870.9137.11539025566369259299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d404a2f08c563d85ecad280f374c4a2f73f1e6c3391846edebd478a7fa2e433d
Date: Fri, 11 Aug 2023 18:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691776988
