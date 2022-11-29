Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD7C5627
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 03:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A8ADC433D7
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 03:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669690854;
	bh=QI+A6qJM1yY3NOHNSolHIdRa/Nvpc0A+mRWpPizJRQg=;
	h=To:Subject:From:Date:From;
	b=MTlNv/eCeMlL3w+wtaio7OkYdKbpsxAUVWUF32jpEih+syQpN6aoMP/KjTA6YHkqP
	 xDmFh+4HW/T1ohImPDSwNO7fFDPS0l25lhjGm9ud/YGvZmdpp+mf46XwcAAtUkRJ9o
	 c2w+/CrbyNAYr/Cum53Qbe8msjLos93c+MKSYliVq+lsu/zZaAyk4FJZ977K2FV5BQ
	 Rq+YPU5UB8NmCImjwwhHITpjlvcUKLuQUHf9B/aV7Az5FmUBKTV/cXnAL8RFc9NgU/
	 qs76h8lUeS5KNodWCLuBYNJXlUY2xd5kB9I16ICDFtz3dCrFgSI8BWI/PZzhjlg8bX
	 QwuyGGC6Q7Uug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5344CC4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 03:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166969085433.7901.15473632216775397098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df4ed8eb4d9f641285c89b082f4c6c96322e3cacf2717a06c552408fe5242d8
Date: Tue, 29 Nov 2022 03:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669690854
