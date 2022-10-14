Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5463C13
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DB38C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665768053;
	bh=Ybph62ie7JUYn5ndbctti03TWI/PI3tVCFtYEVkToL4=;
	h=To:Subject:From:Date:From;
	b=R4496fSrw19qODnDq2aKkQWLnu4ceEpyE+qyb2sqm+bzO2PJSYLoMR10rARUZD9VW
	 T04+aMBNoTmxZIidqr6GNTuIvjOYv1KdqilLhQ25hLCmITj+Qmybo8pYtEqb/ZkfJf
	 GOFGvUSkixPqMbaD2OmS1GHyHp23Va+zonCqUT/Pie7P5VTP1XIsC3tnF6EvCgg4jw
	 tvH3aFwXWRmJCT70jbOwOONs1IfbFoqhbZZiv65uGfNDmby/ntvQ9Z+ApDk1h2lC3z
	 GB4noG6l9oQGobvQZMj/yEkRL+reFYLrwhmQ+TYvdrcK/jRS+7BIEGUpNDlBG2Be/k
	 HMfNgieNHX8FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51795C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166576805332.18346.2329087560460491322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8fbf0221be639adc6ffd0ee8d30ee00db94bfa702a067542b720f57226dd45a
Date: Fri, 14 Oct 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665768053
