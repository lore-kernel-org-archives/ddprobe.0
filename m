Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407F0ECE
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 10:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF508C433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 10:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676717705;
	bh=Lj3rG0ChfQ1aK6IPaXKw/eLmn1F/reHV3YZ6geZDQ9w=;
	h=To:Subject:From:Date:From;
	b=IMcwdCOeihBk5WhZKSgKVoQ5uOTrxReJy4DvGpEFcjyO1p6uWscm7SOjTHA8ezG2K
	 8j7z5C0jphDlp0NiGSofebXZpnQUYrRTAfvB/XqAqWEx0XniuNTo/KE4iR+ObAXOVZ
	 PTHiCxpjGCO6VkZJO3V9NyPpnzc1zrV5Ltyr4u8QB+8xP86vMNAJ2wy8SKv0Vy4RQ7
	 PWsUN/gCWU4nIp30Qp7gK97QwCCfiAAvadIJv5X0QOnjUOZ6ycU98faxYnEyZOhQtU
	 umcyjQtZ1bYN3vLoaFvNwp7bNLjWKI6C8SgLwGBAZHiJFu6JPFmu1NJWu5tUaLqvvm
	 BdN78WxmcGXPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B694BC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 10:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167671770574.21375.7522364795118303779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba06c453d6c821f3bb663f0fcd7f63655518505e288ac1d8aad2bbfc174fc841
Date: Sat, 18 Feb 2023 10:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676717705
