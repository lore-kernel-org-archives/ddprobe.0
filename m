Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51A41C2B
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7708EC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662205253;
	bh=G2LWzwo91yQ4Bnr+Z0WR26Q+dPYS6XGn8TtfNFUU2zo=;
	h=To:Subject:From:Date:From;
	b=dpkH/VDt6zR/jh3X/0bx0G6dMAX6rFuCO44uEb3RXQei2UBY7S8ziFJxbny3WG6/g
	 9HBHEhhDMEmXJJ08C+X8XP5Z4P3cBzpKKYK+1GSBmElU+hv7nRv4UlSL5cvaQfHIOf
	 6boMq2kglm1vjTEbsuuvb8jIsdXkoWX4jcCmrREv+AYel+1MsvJdkwxsv8N0NpvTb/
	 GlqWj+oZkhTmA167p23u93VUJZhv06EcwQbcieXWd/j82NfN+xutfmIDQvEuUTDKIp
	 5wlvVEdFpplhSC+xj0glUMfyaQZA7G+Fk6P0q9cGI85+FqtCUSDTf7LxHXsSj7dVru
	 V9cU15geezSwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55785ECAAD5
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166220525332.27822.12917100094819563901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f12e8c996e8a07a142f7a135a896f40cbeed67c40ab72448b36c2b277587e529
Date: Sat, 03 Sep 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662205253
