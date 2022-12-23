Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7F7A48A
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CC35C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671819687;
	bh=r4DMzBK+fQhjwz2YNK6ZY7OoyTpXgs/rMdHFkiqfqB4=;
	h=To:Subject:From:Date:From;
	b=usabhJ/22+rIExK7wH2TJNEBwtUbTacSAZF34+zKAo3BEzRfK/b4Lh+T3EpRiOIJH
	 Qvjt5zAn52N7x0yF3QsYRUc2WkB8lb+n5V09pePy1ByA035Sb8L+hIzOFsiWcfql/e
	 W3yVCNf5iRjkMFfwUAc8CMRIRT+Lc83eTk5M4HrPB7xyNYXb4JHxEXTKDnNc/Gxa0H
	 awqtFtpOW7RyBE2U/bi4mnKWEn2MPmoBgHKDLOeBZlb81tHlHwPmGR1rqeDJozdbX6
	 eg63iFs/YjlAg5FfPQbNFPP2s/chN+JHhSa3MQtXGvThO9CyXNuqdU/Me+B0Mqf44e
	 3BpPgqglQqNiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68ACBC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167181968742.20052.17447062897404008046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17eaf06e5e34bbe70c18d5eaca81c3adba84a51bed877b306c59c443e49635c8
Date: Fri, 23 Dec 2022 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671819687
