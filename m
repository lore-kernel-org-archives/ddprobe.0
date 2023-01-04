Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDFAE7F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 02:11:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EEF2C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672798288;
	bh=2Cr8kVsg2XPoN5HyS4ECRBlJAoGNKN4FIotxBO30Btc=;
	h=To:Subject:From:Date:From;
	b=to93soBL/Ri8jcf/HlevsC2zuTQ48G02SEG+Hxos5JFEBoWtiuK0SCycr5lF8Ojvu
	 55HiHIkDMJ0m6w/NYtgdWDQNWYmxCeOQ9EZ/u++CrQsLvsuIsfb/hGLn6chb2DLD4A
	 mdddkUx5902shVvmhyTedEuFCr9p7pwGLC4ASVJ6aiQPvKXuVNqHPoPT2oCHZz9FWN
	 1T9RhJxruZq+0fwVuzfvgePEY47nYeiuzv+BmkraoaQNCcRwiUh4hvoHelLdfr6ZKR
	 3gPEN/IwM8Gp8ZQkDeMpIlL25chY/Hq0IjjWzPa+B175VVOvuXdwpoWBgaQhFlep8I
	 ObcTqAygFQdmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C61BC4708D
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167279828743.15024.16656504722152087707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c90e7e0779017ad31b92b5265b3d9f89573ffc20aef3c2089c4860058d1bc50b
Date: Wed, 04 Jan 2023 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672798287
