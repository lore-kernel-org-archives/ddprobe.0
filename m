Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4AD9A3C
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 743F9C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665908453;
	bh=8bTYWCotdrXJar1jnnU8H7Hlcg2y2yhy4dAqZkQzieA=;
	h=To:Subject:From:Date:From;
	b=sdanpcf0B3qpvnRZQfm3hESghYanTrs6ReOgSeq2NKyHLd4lHGivajdlKs8Tb6aAe
	 XD/uZZGh1ieI9vBS4Kvwi092Tf3EdVDvaWRmLsBiLj+n0tKq6jnf8fqElPt63g8McP
	 Gwa0fLmoVTZhWVhpa3P6y0GSqoFhQwtIw8P9e5lN/e+uOI3vpOvO7PuLy6mvg/tTbI
	 me8nzC2V3ZFHM3uOjTZZi++Nw6TODhRMT6N9ghM4CWIW1m3uhFaVEv8oAjUjME820B
	 VtQg5pIyqq2E81kR7CY4ONfwTqCnAkgUbGmpaotHO1tTOozneGRTuS7yuUL9dtNaQB
	 im8ImYw2VoMIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58784C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166590845333.24063.7237159899209984202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 609bf46b77e46968269b00f1f608781f185542e227c972f72cc3347554df1071
Date: Sun, 16 Oct 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665908453
