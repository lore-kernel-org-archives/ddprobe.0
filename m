Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B7357ED
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 01:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1DAFCC433D2
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 01:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680744426;
	bh=ziaqDi1mZyEfBa3bNv6uE96L/6/2fYSskl+k5a0SLoI=;
	h=To:Subject:From:Date:From;
	b=Hq/St1rCphbCeS2IMhdFNkhOxpwR6XDxxEazeLUzDtIwjDstKfyETa81QLatmnvVD
	 7GMpxDXwclPWC+UP89GI4uch++pAv78Bq5oBfujOcBAUKlLMv7pW3lHETC3KGlinBP
	 uK1uz8koVqsWkO9W/6BpYTrpcr+ToGzQnvIdNDmfPKUQn0ufmXkvOM98JRVDKKY6TZ
	 Te2n3fqneS50y5a5Xw8janenybo4dP/gMxEAmUK7WO34IVjPzYJC0nbuTEPv7+ZgdB
	 LZlAmpPrjmskMITUugCQDbQrgVJplx+Zdp5lcY6pokGKE/Pooq0SxZVsJ8RstEMY8/
	 IhnoP74jc3Ssw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE012C7618D
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 01:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168074442594.6046.13334216164926621553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1ab5cbc9ffd1f41c3529c9d1f0aa3424addc98ca2251dbf219f6f7b9295b07c
Date: Thu, 06 Apr 2023 01:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680744425
