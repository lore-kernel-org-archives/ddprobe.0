Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AAE79DB
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 16:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC454C433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 16:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675442165;
	bh=YCg8H+QTvzJdgzLv/fE+pIQXZkZAoy5RQjvEvjvmgUo=;
	h=To:Subject:From:Date:From;
	b=ABpO0X4JxfxAUdHC1VUk8baAGtqGIDR7Y6YG3qXoAcfG/NPqSkhX3NaeU1gm4yH6G
	 5zmPAoJ7d+ZKw6Anuu10YScvYH2wC2vkL3OkiReAIuSZk0mu0ckoe2J7N0Vof0CUKJ
	 nJ6aIZKMDjnpoyJ4xRtTEMiGnAOFQPK1GXHOpSGwtZ0YKAoEFVd+KtctQLc7h9pIuK
	 RpfeNSHpxFJGSHJn7dUJlTptP37ChucAgneC/QU5+pkCl6tIKj5NFvSVYKHDMTfJMZ
	 gxlWogp2cduiuBz/6Mtm5keQThaaQMkwRamC2KAnCasrr2jiuehlvMfkgdaEyBzSLh
	 KruLmuYA4OkKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C42EAC61DA4
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 16:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167544216579.30037.9387003673757581784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c051fe63d16253c32e855b6044fe18d1f8862fb015408767e1e97d07298f5c
Date: Fri, 03 Feb 2023 16:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675442165
