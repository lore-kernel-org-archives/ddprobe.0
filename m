Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3F015CBE
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7364BC433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663346453;
	bh=z/9tBnVcC9pf+tuPjyLA52KhDYOpcY3I3Ri1lBNUqoY=;
	h=To:Subject:From:Date:From;
	b=eMSXsBb+dAscsPxq+GCrvPcFbMeGYRCeD0dubeLsY4tpn/KosPqIl744eABL2Amid
	 43ASPd43GwzljfskIxgC+8YJFLSJv7YSA3ls7+HTCAguITgyvnJ9jdee4P+LD+vn2x
	 CqU4kV5LygaYJGBEDcvTESbBQLvgSUL5ZSpsbThbIUEjC8TzsHVbeQMOhkokw3TCmI
	 QGF13njCa7+kxx4LyRG3MGINFlDxxqcXlsxhbFonh+0ACXp3NwEcUcEW6L4R7YY6+S
	 g/4eh3kkngQ0bH78EiAfBDJuyO0+v4kgKk5NuikAxKZpyM8peGWdKx4oix3YfWdkYV
	 g5Kk9o8S+Ag3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 558E1ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166334645334.5467.13734612734132372023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 792956af99e2685012120e2495eb42e780ecb8cd5e6194d7ee7587b65af0679e
Date: Fri, 16 Sep 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663346453
