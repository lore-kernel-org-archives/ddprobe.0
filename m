Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780E3D279
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 14:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD7AC433C8
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 14:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696430768;
	bh=2JVXdQxt0My2d7AYw7iVx7V3vkb9NIHBAT8hgOhUQak=;
	h=To:Subject:From:Date:From;
	b=qmSPUjxMT5POQWGUl2TLFI8rYRzBzgubrB2ijuLSbvYEZbyIR42mXiuq1gztMQvzB
	 yDRV5KIwS/DBSN3X8SlsS5YRBomVT0IenER3VNGAPAjyIBclVQgtQBD7JvDCprePAc
	 tiVXJoOZhpRaKeDvS84aaSM+2jrv8uiRn5Y9/HvO5uzzevifzQtBOCj1rASOQtIC8e
	 Dsq35JeBE8noRGwCa+5wovPesD7o8LvitYIUNPK4ogDDT+B6ykQ8f61uYAyChJA9nD
	 ea0sCBDkhr5QYRBnBxRciPHM9TtrfM5oVe+t28rLmB47sXurFFULbMheKAgizy3Rvl
	 FmU+BfrX5+f9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBB6E7C4C8
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 14:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169643076870.25396.5585455685672068714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6946f3549605f069e1ab6edbe55f76b2434839b361d76a2db6e38e830e6a60d
Date: Wed, 04 Oct 2023 14:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696430768
