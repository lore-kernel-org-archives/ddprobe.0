Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA0115AC
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 734ECC433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663118453;
	bh=3C3/f6abj0YaV1piEbMRHkMsf1m+cy8+xza+SB/EYpY=;
	h=To:Subject:From:Date:From;
	b=pxjKcm4qiL4AqvLJEDe1+/FZSjMnoTIvLlV+QWPClgNjsMZzeF5hENOM39HLSvCxx
	 FYJsWzme1EJq7s09adryh5rufy3s2wbJTkA2Q5S4C7/clRVrFgez5bW5DPGlVkkC3H
	 cF96Y1nkrVSYvLgg/gSMs37PzBQYrH+AwspiG8kD6JREO3xfAONEsL3erqUvTM+2/E
	 XEcS9gSILXwHd21kiFUNUc1yGdY5ixVMFtNQ7FGVGLOTM/kREySvsirrzRbu/wFi55
	 JUXYe2hMbxefmyNozcD1/Hd6Q9xQ5QRR28wb8D04JlRVuMxH/PhIwTKIAxmN2TJr79
	 RbcNVnX1bOpzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56E48ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166311845333.28783.3589901602040137739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f25dca5a0a649d5a025196b0c85d60955ec46922f5b9a319ea4f04b446214d
Date: Wed, 14 Sep 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663118453
