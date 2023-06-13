Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A38D361
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 04:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAF1C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 04:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686630965;
	bh=bh4Z/9zFWGokvcdid2uc8YIaR22akv+1t5KEQWhNHRg=;
	h=To:Subject:From:Date:From;
	b=Ct/8eGBWxVbF576WXrpOAOcBDHXo/YGXeO/M0cARg46758duafMTc7tc4wCtHETnI
	 GIlK9VgToi1DQytAibxeG1pVh4VYB+R4Rmh5ZI1966aUz5Yw4j29gGaQCsKzpmRA20
	 RgceR7ES2Vt3KzLtoL9F9LJgaDLGq/2EGvcfMDddwkVJ4eygQIxYf6sZgrT0r7CrCQ
	 mKSPs6g/RE/ecBK3hkulnwf3Ws9rzftyJjgX5q1TiOgbWnc3N2f0UkE9EzXdm+iZI2
	 obedAP+TRIpxOHOZm7UCnODWf+A2yX3k9DJggoxftIfOd6wcuhUZZueOFXUPA/zC8B
	 zVgnNhn0AtiPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF31C7EE2E
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 04:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168663096575.26745.12436227029060087053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a643926e255e92373fd562232c34a35584293fcd0f57ea833ab50e4936991a71
Date: Tue, 13 Jun 2023 04:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686630965
