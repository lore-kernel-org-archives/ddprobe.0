Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4247E
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D85EC433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671625887;
	bh=fwc0HzX8caTULtCU0ZIvxIXt7Mpq3Sa6Nj7dVmisp8U=;
	h=To:Subject:From:Date:From;
	b=OHrrHmboAXiHg8+w2kjexRDdYO1MslzluPh71RQnalNG/rtmazXewnEpdilbKgnOQ
	 Hhw3CxlZpiNFufY2V/LQgM/4NtrlvBAie7UrY6sYm+tRBEJu4c4QU0ZNnHODZunXwb
	 64FkgPQm7DDBl9f4bpiNobVuaTty0YAQkrhS/64wr7WpK68u45hCCJlTvfmvfE1a23
	 pOyXChvLDlhYjVNOQJn+vrza84SMib73nfZa/Nj8MMOvGpeNjk45Pq/4aBo0/kXBZD
	 15BH+7E4VrcCh707K0MMOIPHIJXqC7YSk48p6jS6HgH3CCBVl3mh7yCJerCGnEWZux
	 6YsoopaNCwMwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 613CEC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167162588739.22892.14013173585858119652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 867457b41f5c015069aa9c7a5814c29fcc2c397c8da753141e899d6fb619c7f0
Date: Wed, 21 Dec 2022 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671625887
