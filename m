Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBEA12F30
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 13:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E8ADC433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668691254;
	bh=jwR+7fUpk5wEoqZ75s8yefApxkWtH223OHF7tjugFu0=;
	h=To:Subject:From:Date:From;
	b=CUIA0QKxYNG/1D0Kofcy4RswhRNd4gUiVDSE9tUKhSHUmLyMsXXtFTBkUOTgXmOsa
	 lUaG64/ff9QUjcnaJlFiKnoSP8+kvW+mDdy07XHU5cIIoujQkLsQfJPZW3l9cAYBl/
	 kqxaGIFi87yj0g7cSz5Frty/D/E5tDPyQY50wNjVRa8Oi5eEiVuxMQgmfEeNuaGn/F
	 VrSmBZst0InPq6qrH3hS+KTZVj//SPOxx9qqCDXw2Yi7CYgh5RUXApJVXXm5fyVWry
	 dvCzUavMYhwN8xz2HnlFYsn0vmedxbMg8QQPNYtP9Wyk3NgIfo0gioyN50ta6IUkWs
	 FlMyPfP6QeEsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51EE5C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 13:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166869125432.19830.1392873814891294805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b063824ce2ef2b288370b1c53335cb4f3c6c39992fc3667913dbc38fa2bef04
Date: Thu, 17 Nov 2022 13:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668691254
