Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7B8631
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 05:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16A1C433D2
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 05:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681278125;
	bh=p1gR+U0JeLP6zR1WXXITpbFzkPnDXylJjx2oHP5+b4I=;
	h=To:Subject:From:Date:From;
	b=RR7+AFfwYrYTs/t6RVw+uEOtt03bxY30lWAqMXZHNa/Ua/USgbMLpyVQ90cRL/82H
	 5TDrO+FNHRQdrbr20u43zLgsLnddtEi8MziespAS2sxzTRv/bAZdqI2dAmuC0sLYAT
	 Dp7VamMq8XsWcl+0zv2RFHxbTTEitaipEddpaPHiE94xu++6Rcw/qQA97M7lOzrh4z
	 7ATqRXuaD78h3bb/k64cF6fdsMb3jvFm9cpICAg1Coz/i3ShtnZ0GDmPpTF+njpsQF
	 dTsBWOSCLEE2DIN2eMnOvNXqGyx/EQVGBuGR+QG0boTXpbq54vzDcXJj4tyos9HNZt
	 wkiK2udCu+LFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5415C7619A
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 05:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168127812573.32675.6526847736652676613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b3b41d271cc133fba0040df7245ccca367b6d5379bec83fc8ddcbd441a1ec64
Date: Wed, 12 Apr 2023 05:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681278125
