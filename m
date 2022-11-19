Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C463C36
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 17:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68E92C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 17:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668880254;
	bh=XzqXfljGabYTJsSq4VApM3pqgSms/HLgxMZ8K4SjfCY=;
	h=To:Subject:From:Date:From;
	b=D85MK/SWtvI7TKdLMEEyCc74XMfSYSla726aFHYT4YStXyzXPsmmmlMYpvt/f4BpM
	 EIzPQc6qdjdLTB1qrsI45a/8JuG7Ka9NB5zon2weAbqUTkm98p6JtXqvd91z2jxZdT
	 bHmwxBY0HK2SBJJT6R839M/cQ1q19Or34KLdkbbXSn6sskS6liQIVIoqeMh73Rpk+N
	 yDcGEEk8Ep6c8uWccecsFFD5Kjy/5VVtOWdEeMmgYuoxQfInDi+X/LbRCXVPoF2uH4
	 oWWnUb4D0zIq8fZTLbjrHlJEh0XoJrUxapSWhA5/hebj9QyVhsUTkgjYujHoekJBCM
	 cjqO6MM8l066A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 518D7C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 17:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166888025432.899.5903739142279550316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a8b1eb7b50d99f7047c282562401e18e0e1210488c35cd77c37b4256ad514b
Date: Sat, 19 Nov 2022 17:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668880254
