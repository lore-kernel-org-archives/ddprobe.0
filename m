Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D397F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74BBFC433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667814054;
	bh=Oa2BLyN1hhRP7h2ep4U5RXNJGvAYpc0g4K7jo1gwkgQ=;
	h=To:Subject:From:Date:From;
	b=CFe0nvHa92PDeBro2VJoNMN6UKLCpReN8S5vteysCRY20GJNfhApOtecUrDdrnzNX
	 pBnf9y2lVNT375sqhRw1Ol5Zsygdd6ZCXJAnKCQqdL//OPIhY65HkFNxTvjtLNl0YQ
	 s8dVZ1DbPL9sLOqP1OYQ10AKOcwCI3EAXRRniNPaq23gvyIV/s6c4ha+BJO3z3xLoh
	 x40QTUruMGttMKnTbTTJjOzh/hFl0IOyg6/9iTSbJlHX6MQXxnUXUW7/oO8feh7gYL
	 5CSBjNKWvX6/o93n0hFFMeaonuysHp4K+sxL4DHbvBr/ejp1GG/tEk+m5cHqRUROwR
	 56Xf2i1tnYU1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C3B9C433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166781405436.26278.10148933165247593337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df7fd1eab1d701c96cc449112dcf9d6118fe5e778a8dff1edcdf563cafa4b21b
Date: Mon, 07 Nov 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667814054
