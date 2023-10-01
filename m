Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540F91642A
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 11:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C57A2C433C8
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 11:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696158968;
	bh=TzBVara+5tKh146LiH+Ut5pMYT6Mb+uDAD1s7h4lbdE=;
	h=To:Subject:From:Date:From;
	b=H7EMVtYmEIrE91tj5Xf1r/RnKzEkx1+Ijt1osqSmk7AtYrJJRm7UxjORyn3tSxgYK
	 XG1UBNSdmg1MOZ/ItpKOyQFncJLxvE4ap3873wALiGE6INjpkHSJFvcWHBvKZjy7fg
	 S5Y1MoNuXXow3v/TznGKw8yrtSHoazkhWSZlLAXTdLHuF00YbGzJLQHF/28Ydr3753
	 O4c1yPZCmPTQEzdYwlCKAcB3R80rCs0WZpZE87UXK0vZqnJCJUWlMA5V936KuOVjmR
	 76S9ssfKBaIPO/nBBtUf3U3qjzAKj08Wulb3WLlycyTulMENYmPF8bwenT8NpDJFCp
	 ODvcs3upKBgFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6ECFE748ED
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 11:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169615896867.12260.7354424587660732396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed263bfea9e0dee6b81ec650423acb1750f6e8904e5d851a61e6b00c7f1661b
Date: Sun, 01 Oct 2023 11:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696158968
