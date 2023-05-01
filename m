Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D652361
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 02:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF5B6C433EF
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 02:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682909285;
	bh=cZz3aWJ+dJY9lGPplm5lgREDopYf5l4PDWepcsq23yQ=;
	h=To:Subject:From:Date:From;
	b=t7wpYRSmVbYlCGA1rqFEHWG3XV3/7hGVjnwbzVoTdwGDdnxnyfpnYOrKgyeElBi7P
	 5H0IQqMnNbNy/13ujh5XGA9MbngG712vGrpnMixLpUoziH9dwgJPDf7UnhYDYSEklS
	 Yw9IetxYrAfjT19xpEhrKIccc4u63toIqgxLxyhbN8z0iVcBNcaaKvHA9XCIgRr7kP
	 7yow7vaT9NFSv/chPTnX6w2iwYn/ygP7LDRFMvVvgFJ7CQCu/tyNS9v7E/bTIwE+T4
	 zUjt+d0mngVQPujnPyY2fy+BsH9yUQCCd+z6tOEzc+Mg+MfGI0XUxuRSitwovAR7Y/
	 Wd9JEYCGaLViA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD749C77B73
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 02:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168290928576.31936.4590773674132311282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8630b317a263775ec7a45792272623527e16af552e53bc542c2355b42ab177c2
Date: Mon, 01 May 2023 02:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682909285
