Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD5B28EA
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 733A6C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665593453;
	bh=MDdX7O7hG3srFWLOZW8h5m8KXFYwajR3vIFAn+Ej2Tg=;
	h=To:Subject:From:Date:From;
	b=EpdqRVP8cSrsyVYyrDnFutaCYHMQ1fZ4pqISpHrLi5vrJRJQogbhTjFygrHvgd7ws
	 Fxk0rC7PwkVrr8RL8/EYvJuS89ZqmRqN03bOME0gByFHgmCNiNGwgknPLTb4sBq8rP
	 mGc75984mxZQa9N2gk/Sc8LgXKdaG9rKjvkuJXszBSNUX/KuwJu9luwouLqg9lT3lQ
	 AQaY+msCZDIxET729aLJGne8fg2s6GHy7PfLwLqNpnh0CA6nloXtvtYzNnhJhNw5e+
	 s5OCG8cKJ281VY+lAuuPwPeyEgjvZ864XHIyNoAmRU9NlZ7e/FMpOdYbAXjvpCAQmu
	 NPOYdMh7ZEJQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53299C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166559345333.333.2920681707665292500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9747abebc9c63d2658010ff69dfb2cb949f4c9953c30c340a8a26edefa7297b
Date: Wed, 12 Oct 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665593453
