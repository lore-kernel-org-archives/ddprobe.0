Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6BC5394
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68F08C433D7
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662658853;
	bh=t1IxikWX6A5lUfmCE1jhVEySFbQ8kyxsX1IDfjVhhKE=;
	h=To:Subject:From:Date:From;
	b=e3i+DhUf8GIltt3qkpgirVUfpw1UtIy6M8bBADZiglFrrgedW4FZzDQYeTRW2WYu6
	 TRIhffh6F8rNigUHBqqGYVeu7NX7j2jdCmJLuqHvLfSXZNYFpvsADTBB1dI0dLebf/
	 m3LAz3S2H0GtgZ4pefl93XbOD14SnIMkUyQFDfjQEp9fhgZgK/juwr+NoKskocygtf
	 BkqwBkTQe81xCm3Wwm4vwmooWPwfw21RPJLjz/vbJjsiH1qLMhUgI1rlNPf44NmFbG
	 cR5RCMbLyT153oRfAj/qSzuZG/AwxDs9qaoXOkksfalS+BB3YO7/VAA/HRG9sVsUdX
	 o7q1RROfR/wKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52498C6FA86
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166265885332.29744.5888863723145224718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c8ce8db116c87dbfb9ad9b20deedb52f2cc3c3ccf5642836b2eb2925adf1c9
Date: Thu, 08 Sep 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662658853
