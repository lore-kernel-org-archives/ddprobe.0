Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D208E33CA
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77C4EC433B5
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665766253;
	bh=C0hVBzSa0sQrf1zeYvQ9S5BZqy7TDpj7uq0LB93mqEc=;
	h=To:Subject:From:Date:From;
	b=UCYoWtrN6ypDq04Rus7UvIZUzAgwdhMHoUdAYoiBIpzMHxDHzi1TF7a/S2eIraarj
	 gdx9rCWTpBU4d94CzH9VITFRUDVC/SZXxHSgUZUEPkRWyqw8DzbtILvYfwy+6dDxSB
	 msVJI6RfJgMOpbjEW3WAxh+m6kVi132owQKOLb9pDY6sjUdLhGEhVRwcbH0n3Q0Omp
	 RyNV99x8kyVBNRxME7E3DC5ZcVqT9oRXO2JZcXb0qt0PF3dwv985fvg/Fes3kox7Lt
	 opwgUmKuKU7L+t0dkeQiLBkrQ94OgTzyxOtQka5epXfGdIrS9ngDrYzDPKTN2a6nkP
	 rfD9U5/4+1nVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59CF8C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166576625335.22942.8989297743299165491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d052534d444538f63b3f40990432578881d4a6f05d5b76a997b815b546d07a85
Date: Fri, 14 Oct 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665766253
