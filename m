Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB1717E2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 03:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3794C433EF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 03:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680407705;
	bh=41Wp7e36n5D64x2B6QrMgnEpqpV6hInt58sOzVSg/4Q=;
	h=To:Subject:From:Date:From;
	b=lIpxGrNJZUtmHkej71kA3uC8tTIsh5Czfh1QKO2tzlz93jfh8XGWoFQpUum+GdWNa
	 WDQpxjgpASk8DEr0enJZ2/xnghDFCRqej5lcw3624kX4mJ4t+odoCcb4KMbsq6cRrV
	 wfkyDyh+5CjUANCpZb7F4P/PDEnFtqZXpXxU8jCERJqWgAbbc84yKC3UXCpy4qL0LM
	 BFO2qtMjSJfihMBdsPGx7Zzl0Fj+oFPymtkApgrOhw26DqEuc2c+EBODJLbETOTwRH
	 0VmSuJMqgaB59w7FYrjRRG/AL1fh+sT8L7ojCxrAVxEt98AhN7NmDpacNF/xxk3bx0
	 EbSK472iNg58Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1EF9C761AF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 03:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168040770575.14460.9566388699534697900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06923b20f2dd6665b72d84c1238c74a00747e6d594114d583625cc2d6722637f
Date: Sun, 02 Apr 2023 03:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680407705
