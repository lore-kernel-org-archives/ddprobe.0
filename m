Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1BD97B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA78C433F2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672993887;
	bh=VTdAKYdmJSTkwu93v/P/i2kWS/n/T1G1GfOKAau7vXM=;
	h=To:Subject:From:Date:From;
	b=orWjmQOl9nzUzhuEQTeAOAY6eTbx4e5lJxjx0cOveOaSaZJbpX8BQMkbV0a8KKZPv
	 CmR1Lb94tx5PF1P+xi56GowjWvlyNmjPD9tZQnlZ6iA0gYeMYqt/lgDSoWBkvurfEU
	 wtnFsu8laODb4frpFlBLnDv0ZIwj1WJzyY0cdHRF1ljSklcAVsSCWR0wYi/pS83Bgb
	 gxIkYsrTTlcCaKyowtqeOFrOIgD9stn7+GotTtYgvcXmeeP88WKVjjA1d96te9nbCi
	 xaUeA3Hz46rzylFIuz9DH1uicf22VRnuROHh4lgD5qNqSbmePMSqB2VyE+++P4+gPG
	 k8GZZqBqKUWMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F5E1C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167299388738.20578.16165737893769955209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0731a7579e181b65f47cd04ad7560a10d01aa4e1f75ab6040639643fd2ee2beb
Date: Fri, 06 Jan 2023 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672993887
