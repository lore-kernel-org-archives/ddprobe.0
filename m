Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8F610E5
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 00:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78B4C4339B
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 00:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679446085;
	bh=NmcBT6ZiL2ndrJ47SGUy6Mr5TCghL+zNpCv4XVMMA+g=;
	h=To:Subject:From:Date:From;
	b=tllpoOL8QdL2gP5s/oGjyOGXBd48mj2QCnk4XLphqxczxfz3RMB/WATfJmLHV7KUc
	 F1kjJL7U51HIQwE9x1ulNgIyvgjzvGqBbWzOb8TwCi8j7+btDdhyuyF7L0aDlkl1dn
	 K1pSEJQ3naFfS5MaHAaEyzYEO54v0uc7VlbDGloqkfUDwyewG395VzlymY2eKecnQ7
	 fEBK5LpmCnX6FhqkH46vwiqpzMhkhoU6NRDBfdWHM1Y1wo2VEdJz9B58j7Kr+xLqKV
	 EetsBdlpZaMVeel+4BW8uCmKlfs/OIPIFqsyPx6QMGARkew+jiaZWZC6vsyUZgAxEd
	 nhZ8MVbYMlCMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C880AC6FD20
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 00:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167944608580.17704.18397901821346955584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dd5be972e2837bbddb6ac28ebd99d81f84cd676f03a9da019eee14f230604b8
Date: Wed, 22 Mar 2023 00:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679446085
