Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B03D97E3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D0D8C433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662712853;
	bh=y8Wx1+LaRng89fOgPZo8p0+uSbNF1tmYeG5sQgtQS1k=;
	h=To:Subject:From:Date:From;
	b=pDZL4qNfdU77OLW4OS9gSD/0hhSW42zzNBhoPSiiKUlqwHqiUL59FctyqRv9y8QOl
	 2A5IxhTmjpkyhlpyo7GTUyGuuC1xcHcVfdhok1khiLJmfrTE/nLN0W2d/mlIHGsCLH
	 XW0gJTUnppBiUDWPutNG8mek7j/JHEXRhS0oyQov9OcaJhSS26pMRIV5Zt5BMFo/sT
	 zX3gPRQRIqPRsbWueJB0LSaGqJbVoWbMMK5fetVtbMT6TsU8PzgPkmRrP1uhcKkrWI
	 20TIJKdPFXNAQQ/TL8b+5zKJWyGF+z3nlb1xOxB813WYeZnYoNtlxfXxShvxPS9WSc
	 3MqJzBuoKaaYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 537B8ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166271285333.21528.8871731139368139647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57d0f2b1ec1323e117342b9254b80afd5536ef7c655cc938d181eb66e72e3982
Date: Fri, 09 Sep 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662712853
