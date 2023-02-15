Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED687B
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 08:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED834C433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 08:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676448426;
	bh=5D3V9EroKbWwWVs6F4CGIlL4YQeCnlJ89SlCvAYXjU8=;
	h=To:Subject:From:Date:From;
	b=VTCpqPKgjt+181HBrj7wN+qF01r+xRiH7yKk4QTBKKXJccd3wBkg94Xej3u+AQ6D3
	 A8ml/CVoZhQfudU29tLj/8OvRlzeSr2wglv93ieKVf2mOVhoxG30DNTX1RUVEtmG+f
	 MjeEg4H04qwnJ/v2P9v+LOd+HSp3qsVymutmimI9aZGSQYvdQIA9oQycFCGM3ResYq
	 zf0XLXQ4wtDFzkSZlotvN0Upnt1Hdsi7forBlo1/P4zYxIr9xVU7MscXTUORnhjFxk
	 i0HlJqrYa9ru9WTkp6Uj+tT/W4ZiqCReDWcR9EY733Ql8g1mxSZCkRICUfEqXyOO7t
	 U1N8ceAgAWdvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB719C636D4
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 08:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167644842580.30621.1499730267726689342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 182bb0cb2e37f1a3bf42d1127c5928c82c950a9c36253c6c10c64e674b63fbdc
Date: Wed, 15 Feb 2023 08:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676448425
