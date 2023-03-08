Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590CD27710
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 22:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 075C1C4339B
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 22:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678314066;
	bh=yjGOwdq9/AOlUuABPvdkVEz2lvAhMH2jPxYpjIq863s=;
	h=To:Subject:From:Date:From;
	b=XEzlGqtp2vBKwYHS+gQiEb5JJ46A/WupvyF1frm8PeiPyUTdG5khOaD+h7lk5wYT4
	 Jj4sA7n7U5VEJnE4SXiah+7kNL/pIUKE2X2PmY2jUoIIAIQeeY91H5+bD2TNwTJbz/
	 5dhDoD5/77Kd58rHtqWVsOwk/1XaLPmqOPhKLousY9ZONK2up1s606nTG54uE4HBCO
	 JqGjNqSW9imXpz91cJFfwUIdvTEtccRQvgKld6ta43MMW9/ShRN6cMupdV9bgvGHOx
	 cfIt3OaFYYltI1YbpTHNEw4Ja2xE2qv27OLdbjI801EA2iH2iVtYV3uEI7QeOokibZ
	 z2SJTSMR82Knw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC831C64EC4
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 22:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167831406582.19397.2687072288533506396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc55988324a80bcfe9cc13ce2b1fcc3b3ae54be4b88b539294a8bb87f8252403
Date: Wed, 08 Mar 2023 22:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678314065
