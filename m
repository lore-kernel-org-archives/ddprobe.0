Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45EF3C3F
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C913C433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663105853;
	bh=KJ9XyJQAJEi2mZ6CNaJYOZ98ORTVNQJLiHv0Kvgjh9U=;
	h=To:Subject:From:Date:From;
	b=dh7dOHEPbVgAl+nJqA3sHX/PyWzFTyfs+qNRRc+vIAeuQ4Aa9quHhXY/IAcGKJuTF
	 4IeraaltO4DAJqmEf+Mqg/DxrTA1Fmqoqg2/23yk8pqLTrOG7kzCMSD0OaEXfZ/VTQ
	 b+SjDml7F7dAD6fzdyPmvK3LATXxPxPgJ7ETifEoyRI5aOAupMxg2o3GrnIlEM732u
	 6z9zy0DIlZHMiD8MPQcLWfQYpm1lHIYGBJvcsFfNSNCvP0RzYCvYW55j1uYHvBZuNr
	 b6jxTS8rPxlYS9sLK+zvXs1LDcbOwO3EEhcNBMe63BArA1m/ojO0+GW4X/rsmGTe0V
	 xEAQe+cvpMxeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50E80ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166310585331.1172.11648994801212958734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b264931224facfba8e43c88ae2028b8205c4fed83eb23200eed999999203b02b
Date: Tue, 13 Sep 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663105853
