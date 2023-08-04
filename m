Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB591AA6B
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 17:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1857C433C8
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 17:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691169188;
	bh=cxozJdHD9GPDH5Ulx0+QD1k5b2USl6nZ+bKXkfxUngU=;
	h=To:Subject:From:Date:From;
	b=uiQT2tkhAyGIt8oz6xMOaoM7azTwxf6uU5CO6JPmOwyLmn1fFTN8bpqecwo/qs2AI
	 r9Q0XliH+XMiDz/F+8y+LZmNk5eFNRBeHtYI8AcfUl1oStyMsfbrJDk1DRYyi6mD5z
	 qKlyWhWelDOd59ONHMbAdrJ0aWiioKtNuVn7pzqtdET3lMFjq6h5CeTblarBf9TsH/
	 a4/zGxlyF4RgYMKsSXh3rVqXsbFQSe/erUIKoLNx3JKDhqfj+LxQC2qzOqsm+z8u4C
	 x1gAXeC+qQBfI5z7u7qLFdp/NByEDm5fQGOLcSCV/S/IMWAZaX9Xo6c1J9hmOelvdV
	 JrTcoWBA+9nfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A49F8C001DF
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 17:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169116918866.17242.6445216394961327413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77d8120c387e828ae38164c4413829a8c53d7f7d2d78a9303a02602d190b5578
Date: Fri, 04 Aug 2023 17:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691169188
