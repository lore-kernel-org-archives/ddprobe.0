Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165B517E2
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 06:18:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA99C433C9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 06:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689142688;
	bh=JM2YfFQL4+Hab1iZzbQpMKXVkr4ggqo13WwgkO37Cvo=;
	h=To:Subject:From:Date:From;
	b=T1bWlUjkd5NcSaZSqRQkql2alL/xBKiXKQ27jJLbtRUj3r6QmVHpWrPDyS/jdz7IU
	 Y8f+qTjOeUEGUcuIA4dS0LAxHTtrP4XhLTXfpx9EJg7fg+3+DflGH7IVjlbyUU6eUf
	 IePnF9O/2OlQtbwcioDhqEsAuwP14LgrMfAsM58tVSLUuh+g3O/CMFQt4AVZh7BfXu
	 VeuxczHn8vQINWe/40v2EYrQiBq1809IDqIJvPZn3YZq5TudCM6WUeBKaWwFKz0V+i
	 WdB+HWgBxKHIoInMuN+ZopdIg1a7xsGjliH/elwUQVeZ7pCg1/t+/KarOkYoneWxAK
	 vNGGYy8R+63tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F90EB64D9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 06:18:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168914268873.14796.4783369099531993793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20a3fc63fba90c684407cf652c0e914a24f66f9b6dcdad312bc8ee7cf2dab5a3
Date: Wed, 12 Jul 2023 06:18:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689142688
