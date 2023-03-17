Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568F76D19
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 15:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03025C433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 15:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679067666;
	bh=1TChfbzTek450SXLZwblDGMWz+2vBo/FgyiwC2PYcdc=;
	h=To:Subject:From:Date:From;
	b=tIG4gbfGYGVYwp00GnFD6hwjnOh7h4t5w+abDYIl7STZZ4CQnouBQX0KBaMt1wzR1
	 +LmELNAAm5ghzfQYRZGdjZ66JSBVv4cRGv3kMA8u7/DN0QONm5oHJdrVk3bo1WpQxv
	 EaulB9Dea6qJLJVaF+ZO+R6b2gfM5Y0K88QSKlepsOEpSct1iUb497ljISM7w4FUIA
	 4rBx9AyWX9yMwX/N76PVmWF4r3qZfvjNzTOqFp687S4SMyhMJ7co+aTBJpc7HiuoII
	 FopLc8syZknLZmMe7mV0eAyNBKU35fA6tCTeI14MerVgxTftzUBvN+amVihCaEzuJu
	 ONSneflOWKwfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5E43C6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 15:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167906766584.12395.3706059243595654866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f8757785dcd890f71db4d606ddbc2adedbe52dc2a721f7a01a44b433015eac
Date: Fri, 17 Mar 2023 15:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679067665
