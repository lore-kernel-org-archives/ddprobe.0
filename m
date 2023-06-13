Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9530423A5
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 08:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04C2EC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 08:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686645966;
	bh=Gui6XDq8jG8yAruDmMMcTRGfT2KqvBDAQF14pqrM1Es=;
	h=To:Subject:From:Date:From;
	b=Lf1++zPzgwkNrN1Y0jFqd7aO/bf1f25gqx4x50ufIHihZ8WZlau/QOgg2xYQPl4Qc
	 dSt/GX7aeIEkSCdR17CBqXF3yLZU2BubWdQw75uYG0GHBqB1Bo0X8xXUAen31ktvZi
	 MdLt01IVMGgbe7QxmzxtHSb1QU47kwKZFmnd/X0NQlGTl1uVXo1pl4p36j5zIEfTq0
	 0n+0MC6JD/Bx1DU3PU0IGVuRDEYID+DNg1dUIq4yzS0KNDCblS4txkamwtRxQzydb/
	 HZdGrCQId0UXoDJ4ophpou0uq+T9qVmrv6Hskmy+TqK6aY0gv4LIjVQBKy+/l7dBzc
	 7Z/jvXkufxQqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D86FEC7EE29
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 08:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168664596586.9184.9243623271992888866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c1f4d43864dcb65ad632b297a1ef9cfa49ff3d8cff80b8e99d73b4292fd9aae
Date: Tue, 13 Jun 2023 08:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686645965
