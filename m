Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746173C1D
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 13:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06B6C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 13:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688908628;
	bh=25Gx0Wx9ldsdGIdKba1qMTvrFQemMQbPHZifWAGquj0=;
	h=To:Subject:From:Date:From;
	b=baEa5AYfJdjUeLQJj1JtG8hCoNyp/hTlkWyXrFBiLXZsXmBHV2ZfP/DN3XDQLR0Fb
	 Bablwoi+HDuikMf/BWUnyPJ4Vw5QE57MiHw/raNI8QxCrAD1/6I1vRo/V6emlIXcgQ
	 b5+a/kv8U7aMHzIXXvfrT39yi6fHHEEpwCSkGo/fHax9rC1jeBBBqOb5Yu3I7EDZGX
	 CoPqnx2Oj2akrjqlwT1yBoYifkZYcQM2LeLE464AExXACO3Vs5Qa1+5WJRoGU3WFSn
	 OpDCZPJZkSkcEpVAenScBv+ZovgB8giXhWa+HRwp+uiwxnkUe3HPTA8y03WjEZsHi0
	 VX8TJ3SGvIt+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0911EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 13:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168890862869.30523.13655350592583994127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a64a551ad710cabc844d2aa9996c4d81dffc10a044654205bf248440cbfaf0
Date: Sun, 09 Jul 2023 13:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688908628
