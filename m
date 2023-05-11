Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4320A371
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 07:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2519C433EF
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 07:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683791046;
	bh=tgxKA9PWmaLi9VTpTyHaBq1YxlcoGaIXvYhSCvlKCT0=;
	h=To:Subject:From:Date:From;
	b=OEI7XiCIlNuKBabchAbHNuJyLnxdZ2RarkDBMlvRtCtHKAcSmlJda/jphpbifxAZL
	 AHUtEYM8ytCmhDvchVBttm+AI5GAFN6CHGOAw7xCfJAwOxgC3ft0A3cN8U17AFpaz3
	 SQvgjvuYIXjggE+MKv53NFZpsDO5Sgr1vIVAJJgOcwKa4Lf6tMeXS0qiDynK5pSaHZ
	 kpFS0XiM1iMlWcIrmF0hf17WB2DxxVbnLsMdu8Eal/TGPR55+Gdj8i8yS4iwiDldxF
	 WR/XB4pk3QzwAeCQYeNKs7Q0Mu2qhMn7HllmDPovqO85N9IOVeDgHqKw2ZG4srOlHu
	 /Yc7BsjJgXzww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7330C77B7F
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 07:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168379104586.728.17518453436619354959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad754d6819d135184fe5e4c932aede8845b69a5809e4b4c6a2a9175f400f5251
Date: Thu, 11 May 2023 07:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683791045
