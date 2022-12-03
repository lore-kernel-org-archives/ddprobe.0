Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18EA7C
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75474C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670031654;
	bh=MJ/TuoasP5pTIXSEuP+uow4mNcxEsyOwpx7wBGEi26I=;
	h=To:Subject:From:Date:From;
	b=ZXh83j9vvwdS2DgRUJ/N5N1Ttlj3ZnrRrP2ZmAWj1XDaJwL+/Q89nqSedq+776ou3
	 jujvuDDFu8KMy0SyQMZNJ3FECY77/EeA72fZtPHi7T+MeLDboT8t+/w23pSS/qtymk
	 R5JFjkYU9MJNjveL0+8/3dUdse4kM7k/1V/ge4bPxp6BsFEWAZunEWuBUnJBcsfD8k
	 NHlOVDGx1fNdhDcGOZ4cx7hJl+mxK26ngw3q/CJXFOWbLP0TZaobx8xuxrHTqHaQUl
	 1cPkGwC0ijWhB0wO0V54FdcU7XAM5pm8qXb36kW27dVuVd6MtTctoNjRaQrwiSGary
	 9N+ESJlNJAIxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55AFDC4321E
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167003165433.19950.1651446414231198371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b49e98244a443da7ab479a5d440235be3cbd4f0bdfa583ded48472dc6f7b6f8
Date: Sat, 03 Dec 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670031654
