Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D66C5612F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76030C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669503654;
	bh=3ChAZsy2x4OTP+LYV7EvL8nMZHvAo0oWx8P5jyAqeGc=;
	h=To:Subject:From:Date:From;
	b=P3XIWATCw2rGurAYVk/OeKuETYNYwwnl4QRELpOrKSUSOf3swWzkFOHphubCyFjIQ
	 W4bKesqRtAoXdsW/lYNOj8kh1XRAjgIGokjPpeTG2vHV4HIQb3abwld1OAauqpQkEz
	 aSfv/mn8upsiIcDfUcakAGWhc7pi94RaExmGn6ffrNA6lmcLO+f+rBqEzdo9ZlXFhF
	 rTm2nmddSxMcbP9jQZcvFqdEhORURoKLI1Wji5w5w1I+6n+K3swfl35fITmauRajp5
	 jLBfGzvKTnNIxImm4mTlhJoz/CP8oqedt2iiPOltTBgnAfA9haCxn7Aq1QInozrnOn
	 FsOhmKEFKHfkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B803C43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166950365434.9619.11007953540348451642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28478ae8d7094a21bc7315355003885a6c8b475e35d301e087786be85eda86d5
Date: Sat, 26 Nov 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669503654
