Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B61F187F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 03:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5388C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 03:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686539585;
	bh=LnyjVCLFztdv3sibkb9mXn/dmDRAVLgvPMeKlaxGvUc=;
	h=To:Subject:From:Date:From;
	b=V5Kdbm+bLExwfbs2mbMqPoNmHmAxeH1AHNjFo+UEnGcsZ+qaOpp20IgCNdbPAZeZP
	 k+VKvBIdvp9rxABTrTrg8RGzQjkad4zGetEZiFNmQ0ke3z0fe8Zm0lZE/CYtmYCPDo
	 MRKw6ZoTOJnSBdHTQv2G3+UTtMZN+2Ji6f61acjW9LVZXL9ki+wwj7bz9rIKWU7yG0
	 gOuL7h8C5DnBZ9EIcDdJ6Rd31hTGYhatrGk5PYJu2D0rq8uzYDUnTonrSknQgMvBA/
	 k94OeM9Pytk9TWkgKUvNhEe6RLiBWm91CNZeaIk+T6YEeYgJ+RmuaDqMzUTuBsYcHV
	 kupd4XqLOGiPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C4CC7EE23
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 03:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168653958579.20037.3754984431517048162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13577ada9040fd8d0750b8cde259ce726d492f57154ad37716f243737a284a74
Date: Mon, 12 Jun 2023 03:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686539585
