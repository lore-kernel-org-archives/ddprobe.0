Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0B238F89
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 10:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C516AC433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 10:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695033908;
	bh=82C4xh+R28SGP7ymTkMNFkJkJ1AQrsZXWMUWiqw7vcU=;
	h=To:Subject:From:Date:From;
	b=pvfRh0wN+LXvV0N0ZRH9DpE41XgIgbQ9twM1wwb5R036lQ7MtIdSuKWxqFp0EpaQ6
	 mtktAiJ63tWsM/e5XzYm5DO2zNDmdpY2KAWp+H4Ces8QLCkQ1ztwaEE4gb8NW9d9Ub
	 LvBq6c/kAUirT9p6l1De5AepljTmoFRFXwAFLLbb2mzOGGC7cuXkZvwm+swAjugVRu
	 ESzgXC4dJ9brMRhKaf/PNTzkE/YhXsdqU677HJcnrMDDpQwYW/kOJD4xgmmz4RgW+/
	 U0muJAmWp1kH1xLFp2Cv96tdJi+eEbtIT//POf4qTe6ocZgx7bZJkLjES8bDEnrf6+
	 YAsgh/uGsmKZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6515CD13D2
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 10:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169503390867.5521.16671695306762839698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb2f5e35ba555da502c72f2277f8f54d8072f0896eb81f3c63455639b76ac69
Date: Mon, 18 Sep 2023 10:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695033908
