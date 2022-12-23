Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF22AD44
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82036C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671838287;
	bh=1Pj1xKZ85CLYKQSgm30b7QF5CrCEhnXJGAMLIQDtFXg=;
	h=To:Subject:From:Date:From;
	b=RuOyZHxRC+75LjRfUPmQwYGtimhz3wdPAx2bgwg70+7INDO+I4ODVkhS662FwzRTA
	 CZHcWj0Gb0ATmFkYuJAS+Yv7CweipLFVyL03bEJPlsPbrcCeUOKQMP7k5uVDDMhhT9
	 IM/32wWzGB9ecw4Rmd1rGaw2FxHxsrgyad81H1xRN8MtoFejROeOdCoEQ7MaQvPauk
	 RRgEcX5NKlOx5xghbSIxCQd2j2x1xQl1Rq9/DWOsv69Dmi4tVe/nr/7/st5tLCQlZu
	 yhC/KX+KyCyUE5oStUqZehMAYzYf4pkPCW43hGOltp4D6604qGr/H7M4uP5nKTVUAF
	 /ET2LUxXeYdNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E13C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167183828738.10609.15156480091401817805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34cdf2b3616ce1e0f8f9da6b4e87fadb39944c56ee158048f5c21877af22b9d7
Date: Fri, 23 Dec 2022 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671838287
