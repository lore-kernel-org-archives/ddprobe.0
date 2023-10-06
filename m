Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6952107
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 05:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mR3gsmeT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D33C433C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 05:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696570028;
	bh=QBpVsDbloHHPX4JFcmO7MnlhPv9fmyuGpo3tg/lE8hI=;
	h=To:Subject:From:Date:From;
	b=mR3gsmeTNlPZ7b+tnnFA6fY6S6eG/uezVR/OqiLY7l5l8t5RU5Mlxm+QRXtYbWRMP
	 O6Fnzh8ZzoP8N2SICrZ+ivNvnMRcLqrB8zUXCazxiuQ+jWLFaGsPIFtTVAgjEfFbbP
	 jeSAp9+R04MBN6Puo4CQMU/LDDoD2kraLFhhzCaJ2Z0JCC/iqykFn+2vZPf3PNvMvh
	 sSkCcFgGb7e3/2DFhNh7LGGVZhugb5+u/bErhVA/IHMzMvw4wKMoGZlX1lKpo4Ykmy
	 5JM44Ct7DNOpxzy6h+vw3wxZmOMeD/ulP6dir/1wn7XJGtsQeWg9BXoz2/2z4NXtE+
	 RRTw2jlNZuBTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E49E92FE4
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 05:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169657002874.11698.306906224631826221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d04c5cad32cc20c46581e7b76d4f68906d3a3bf65241def31aac8018480ad3d7
Date: Fri, 06 Oct 2023 05:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696570028
