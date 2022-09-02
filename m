Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9C410F0
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CF96C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662099053;
	bh=MW089XPP0FtHxvf7YEm+ZRHWv1gQWIdT+fLFkA5Nl64=;
	h=To:Subject:From:Date:From;
	b=F8h9suR33rXmXzhhvyHOVQPnnN5bk4EueKcAVccO7rVgw4a3FfL5NfPeXKgL04VKe
	 Js8wOwXLvCDdqSInxGFDnA5DXCz/+QD4qb0Q1XfeJtthCe3wDy0wTePE0Q4/+iOX5Y
	 oNvA/lXeHCFkkNxj/7oN3Debzk1AMe5w5CTuL04QMEGf/D9F1r+qOq/x7QQ1LXloDf
	 b3eZIzlzsGfROYwBur7ilxIn/spuErZ47EyKea3Nidq4Vexg0SyJ4uMs/DwcGqwVeS
	 iqknPxCbN3PuEy4kO8vzxrAmuB1rIx7neI6StKw4byc/SKIHLdGrD2OkE6EeNxPnGJ
	 MPmN/HCWUVgcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5645EECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166209905334.20529.12537357020706438999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a19e71f9d1b4c912603305d70875c69de83ac4c0f4e6ce1ada616eba685ebd26
Date: Fri, 02 Sep 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662099053
