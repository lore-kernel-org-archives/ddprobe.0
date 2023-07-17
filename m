Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781C71380
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 04:41:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5FEC433C8
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 04:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689568868;
	bh=OcQ0SMI5AJuUHyjJuctr5ppHLfArwqRB/xQqP2lanhs=;
	h=To:Subject:From:Date:From;
	b=R60WOmSfHaVn3Q9J3dkdbXtMVsqVrfO5yyjLB+WlGLl9iOjxpikEKzXwAzx2/IY2Q
	 WelO1f4JeYsVN6laI/BXXou/xCUw0Yh2kTxfgD7Wiwjnts3jwmsopLllzmQHPhUeEb
	 Ha0/iHh59baPc4yZRXmmMrxYypTNJ1RSNyqF6AMcsYK/hFbfdj7p8AqeEfrQyWZMG2
	 Rv6onhaA13+VLwBFym1W4jXGdde762iXa+OLcqbO/k1WVXvOITLzbKRyWNZw82eReM
	 rv8PIz+NyL7nxwYdA1Z2meCBwE8NthDzq3jWbyUGlAiyG4axLSzRF3Qj5vJd5znSDY
	 Ke0SCqefwIjjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4C1EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 04:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168956886869.20264.12815683541444999178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3dd7135e042017a9d0da53d3010097fbac5529ef6957f698b4a7a434300ac6c
Date: Mon, 17 Jul 2023 04:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689568868
