Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E30369
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D574C433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666579253;
	bh=YNYXWvRPtS00lTfFhSJWXJGOMohczY3LxpYKJxo++ds=;
	h=To:Subject:From:Date:From;
	b=OVFKDZrcQqOI7l807lgVqpW3RqYMJpus97Xsb6TiOxphllwG0+bDEAUBKHNjhuR3w
	 nmS5Y0cxAW+bwzWZSQCDkH4z97wfQ/K4l3Sj2UVXlzprc/+rWUOrI+qamhDHySashs
	 MajZgITEkzD0Pt/dhWFZbOVaYpGbg6owpKjDhMfpBTn73pGxkwsbGtHjQryJew9pEA
	 pdLyZxATe7F/fdZxk+Xlyiidsprign4fW5VuXXviXqC8fgNeFKsvuzwrnzexa6mDBf
	 eZyhcHBXQNZQKvhRmlgRW2V2VAmzLsfx1o1AFs+iHSiyy3/LyVoBlhGmWnV4BDc8ox
	 xPVEFLqkVAixg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 503A5C433FE
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166657925332.12276.1067763681874591069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9180645acb75df098bc794d6d13bd79a1fac03aa9baa282e1faca359a83c5a02
Date: Mon, 24 Oct 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666579253
