Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF66B8C03
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 20:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81397C433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668715254;
	bh=s+HFH70M/tJmVNMaBBdyrcHDM4oMnm9LO9CFAT5/hnc=;
	h=To:Subject:From:Date:From;
	b=PdBZbddgHg40tUNLNJ2qT7JKZAJS454fyIwbg5HwwG489if8LhHn4CjeQLgVu1ajn
	 iKFDm8t8gZq2y6SdqQnmyKthHN9TBDOdzL8FtuETElmey8QoVwnwY/RT2x2OYokNnD
	 qMDIetwSAyS9fvcD0vlw9CqrInRpqghO6ST+rg151X37ZLar10MRZfEl3JvR3CmoZE
	 g9XEZetD9lHZ/mRpVol27tXiBS/ePioAGOGSXi+zcsob0kEN39xfyLi/DDl5Z1EmP1
	 tChy9TWcyE7E0mVYVcgT+JOtrSojIPvmW/lZAFbxilJvQI8mID7KpsEOR+AzeWsoy/
	 0Cks7e/vKyp5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68823C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166871525441.27048.6662918039727355502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c578b18037714df3889eb80a1929fb57729e7ccef22d33b4b3b5644ee378fa4
Date: Thu, 17 Nov 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668715254
