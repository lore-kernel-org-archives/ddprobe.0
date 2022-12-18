Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D596E3FC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D973C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671399687;
	bh=M0lJhK/jOGT/YcyHUdy0M+/nkCk0j6Czo3E94vEzPa4=;
	h=To:Subject:From:Date:From;
	b=ZIXPvRFzdIFLBC21VHtqUnyA6C9IGXD83KIdPm+p4u1imUI7R77TimsYfgzGWrosh
	 1+BwSZndpSgMDztwAvEMkDLVru50w1/ZA+CVUrQFh17n+2qAIMC8quE22cAeiYDK3Y
	 MF4EKQN9wK5XaFltp/bBLw110/LstnycfHSqjr87ZlqBhm7OUtWV9k0Bz4Klcdoam/
	 9kcUjsmQ9dCbQrZK0vatE9x0YZUfUQ7rLE/KmPhfchlAlyBk8G/+lOiNFntPUpW8CR
	 JfBxozym6+d92Cxziac71MxN1lvTzWeaWkETiP+CZ29pLydMSEfauDfUefsoQyEDb/
	 cVBOcXmPK6AvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64201C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167139968740.21399.12643859549024429610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15d9533fc9a9017288c5c3468066f1c9960caf7dfa8e3d4cec308b7a0bd50ce5
Date: Sun, 18 Dec 2022 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671399687
