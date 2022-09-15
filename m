Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B184403
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ACF0C433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663244453;
	bh=JoD4nV2W1MLoSUyLsIT/Df3FxfotCBWDStHxiAKWFy8=;
	h=To:Subject:From:Date:From;
	b=AItKekvPR+OvLLBiiKZ47Pf03tFeU7k4UOvGV//BTazueL85QEUG3bB7s2qAlmJ5Y
	 7mpjya4Fj0nmgnqLru1XkAEuO+BKZHjEXhbILKdrt8ZyErwnPS2xJ9m3hEuVSkCRok
	 YIvy7zMOUzqdoYGqcH1H2SH1Is9eMkslojqw0pIjTrNKe3s2vUQ27wirxtqh/SJeda
	 wV3TUJA1Dckd8+oLkH0KkwZot4D6J+/sQjCFBI37g3jRCWVdNE8SBmMLGaTkN0c1Vq
	 LIqWGGPrlOQ6zO21Zf12686tguJREGTfmlzl1Qka027OmMkWLzQk1oigkcZ8Qw0GaM
	 JRkB6VU1yjxqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50ED8ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166324445332.10288.9235315447310966911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7edb0056bacdd22646196a074a5509301ed74dfcedaf77eb9349f9783f40d7d9
Date: Thu, 15 Sep 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663244453
