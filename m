Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1A847B
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 21:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 641D7C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 21:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666906854;
	bh=h4Jrf3kCdZrO71fOl3aQ+1wnfP8kcd2lWEMQZ20p8Us=;
	h=To:Subject:From:Date:From;
	b=bEHds/pmMMebf6y8HxYqaudhBdsSv+iAIaDTMLLvXebrjc+ttQ/Gus0eqpNqIZJOc
	 X5BTJIlv8hYvMbFtkiKqeuZl40TKbHLJV5UqprX5HiEkVIgdunQO8JvVeBi/LQFTm8
	 sz51WkMLV7f9Ay6BReOpNZI3EM8koCNmrMwFMnJVgQDQnlUDnwmra6LOxSTVzEEb+H
	 9G+Cnblgw5Z0Zv7wK/CSDm2jDvTlFzxK8aDA6gAMtlz5V89GEQlwz8TgUa1ZYq7vWF
	 ggvkEKZoyuIJnSUfKW7Uz0wpETIaKwq/NsJM9S8mdHCV2xy1TCHTrMw5xpys7PZP+Y
	 ddWPmAG27fBIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F0EFFA3740
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 21:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166690685431.22165.6714122198087701198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 140acac1e20ee92c139871be46ab17d4c019c407277aa5865ac00e4674c3daf7
Date: Thu, 27 Oct 2022 21:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666906854
