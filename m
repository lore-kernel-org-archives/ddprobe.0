Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579DC1641F
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 18:36:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7A6C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 18:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695926168;
	bh=HRcXOARpAzZ3ogRFPxjpLya5RhfpBGglU/WL4bfSUOc=;
	h=To:Subject:From:Date:From;
	b=TYgMb2nmdfD4L2wQJs7w3jH8NUShVJdMg6vnJkrcHeCSbvKx7gKF28BD+Tg/VQEUf
	 ez2+rU3W3TtW9/85/U0CrhmSB5/iAnHo8yxvjcKzWKw2xgVcmRZkNzoQda6MGmwJkv
	 Nr9vxn+SsL/aU2Ju7F58116vwuM+Ug+DJPPIMHMGb2OLb6A0kfzNWWb2KXpJkCkIJ2
	 CPGPnMRwke5fDI8Bkn92nUhfSsrFqbK7HVoO1Esb+a0XN+dC7pgExXHdTSnPVPBTcA
	 hCpEOfXZ0ljHbYQsIQWIoh3lzb/2Fc2gmBoLQ8geWvA5wUFYyyyIVz3yh9lN5qJHYV
	 J07foFlHuSNgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBBDCE7B08
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 18:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169592616870.25130.4454371458233603036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e869e3bf28520bc19d2979abfa6f3024b873892363359fc6f54cbbcda276b1c2
Date: Thu, 28 Sep 2023 18:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695926168
