Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F373B813
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E90EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670694087;
	bh=xFs1nvZuukkzlMezwVNV9VDCoEboAZOnbsfnIaJlYvY=;
	h=To:Subject:From:Date:From;
	b=o93HSFGmVCKZAF7xTNEdQTTiq3ilEFCY7BF8HsRGVpAyH3OELAVx3Ua2qCzYM8Utu
	 ecBx4l0EPZySCbqow6/M0gznFTvKGexQFyDzNwUTv+/MrdpIKlUDbA6NwIdzG7njj/
	 N9Iheh9nVCgszuQvHWqIwvOQxl5nEOA0lo2kW5F5zLBCSAZq3yx/LNEHzEwZoRj0Jl
	 Ke8P16+ygX+nJt5z2iUSpQiJjLUgkwlp10QjBjQDR7mzQ5fBhY2FBw9OwDr2XHeZSe
	 vquTBnxXhG3uFaO3bSPcw3zGoxJHpgD9MQ49UXmAidF9bt771SYZU5pHLv3ZfsXz4E
	 dSkPuE3OGEsIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70D74C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167069408745.23427.12346859523118794583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 775747bce34b4038ea81552cfa0ad808d3e6b804197a3a44880d1d321ffacba9
Date: Sat, 10 Dec 2022 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670694087
