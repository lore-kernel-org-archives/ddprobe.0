Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E0380C
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 09:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B34C433C9
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 09:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687425188;
	bh=YpGeMAqcIzIz3Wp/VsDstYpoqoFD1vBrKwdoorTMIRY=;
	h=To:Subject:From:Date:From;
	b=TKhgYgm6/d94O0pywHWYeFISUd7+l8+wc4GOMO5+FzZVYEILTDubXAapi4K87Fr1P
	 f4jjKBdsEobnPxeka8enNxXu9mpXaaDJ4hO1jtIpsCskgk6lV6BuEBIuyEFbp2O0l3
	 fW148jLEvN4UJ2og7fs/9N6vknvFB9VZDHZYm8SCFo6T2Ic58/rPVcNeAxmq7sPvPV
	 NqiGic0BTOHE3jpWbjbDbhraP5j9TE+iBhWwnZ+lwLhlhJzqygRKVR/FErAgnUdgad
	 0rGD0ztKccobwJH8uWzQsl3b8kizFGCHxnv1u7wAjt+qWVooor1YOT8Ob+MHj36E+x
	 sRaH4Pwxcg80Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B52C4EB64DB
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 09:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168742518870.29319.2293552960124010692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d9aae6dcc7cff4a9ef3af25cb7ab1a56a01485ca4b68ea465bb490b6c6a912
Date: Thu, 22 Jun 2023 09:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687425188
