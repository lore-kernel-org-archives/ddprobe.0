Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D396275B5
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 19:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7A65C433C7
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 19:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689795128;
	bh=7R9Z3sZEX0nsw5p1nUHIau6dMXrqh5H8iAk+XHdI4GA=;
	h=To:Subject:From:Date:From;
	b=JFe+mceUc1DbPhdaaDd9WZC5IAzVK910rk0O63qvY6rrnwIlMwgYipl+cW6etmxvd
	 26F3tCOzdeZkbtZ8wJnKqkVEXnNSxvpfORF/fR6fOuSfgiE1+vDzoHvEMGF9aJbDd5
	 alrLD0uEvuSkpNtQFY4SkqJyYt+TafLONul66/HCeitZ0FcoEerBZCQVKnXFl7Hbl+
	 2agffxVJDx1YuEY4lDR9ePEpIHldXIL0p8a7tJd5Xgh58CIsW8P0OyGK6pGleTDNpJ
	 uSXfkaoZi7oQ7MWvWD5qxN1t8nq6grA790uhhGr/k6oa8aMGtruf+phxHX9SGtfcBC
	 LSEzSeS0Eiv5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C377FC001B0
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 19:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168979512878.4190.2099412064170710235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e35751865841b4daece174d990837193c704f11834952837adc59c2ae13bb09
Date: Wed, 19 Jul 2023 19:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689795128
