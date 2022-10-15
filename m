Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7FE372
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 759DDC433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665822053;
	bh=2QnEPLc8niFoloG+4Vr9N7hcjjIKpNgg8rO8p+DzsDw=;
	h=To:Subject:From:Date:From;
	b=J/POyybVVwB1eDQWHbQen2cN0LDvUTXh1CzytU5NVmpQXnQHXuJW7a+RC+irllsGL
	 7uI2J6vR6tpSPxTFwAdfz6MZ1R/cVuC87WC/skpmDahC6swl2IAU96WBnlakt1dbW2
	 b3KM/tM34ww5v01W4YRSvgbrnyQCF3fTXOiaUBTPJp2HLm1xYCTrRhfOfsUggmt3Ey
	 kQqAaF1G1sO4vEGwLXDEY6gVfb+RHFYHA/K64fEJp0wbqC3cxeeSdO9GV5oz65Cuhy
	 92H9kme4AFRp4BKXDTBPphqJyGfiIqDb3OSHZ1nigNKUpsemiXod3LvkI6st54hT4/
	 R08uZiJDNGQpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59449C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166582205333.19845.6136391034424530833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5036638cc7dce0c034342191f04fa8c290bc4b065defad0b3bcae33dba86f58
Date: Sat, 15 Oct 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665822053
