Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCFAF7C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77BCAC433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662605453;
	bh=QDCd8CIzXfD5rXiHx+GooVoqPFDP3ZcMith2FUy56yY=;
	h=To:Subject:From:Date:From;
	b=XL48euJzbqzvoWvsZcPXbwh3Z1B9L2qqOdxBJWjgUK+74HpGUOCEx6ne2niIuY4P2
	 qMGaNPnGWFrvFwFyA2WVaChWavHvqOnb7MyBMwBsqsdZ3pj5fjHG9/KjbK/CTKg9g/
	 AphrtF0EhVM8RR1fAYR395pCfOkMf7JHCbUgc1LZKCJwzPq7wlaTTox76VQI+F+wKg
	 LG47DIdeeMA25d4GqMSDUG7XYJcWFIq7ndvlXT76gTIeFLOuLZ1XE02DCWovgvvGFe
	 f+jKo6FllS8OfCo1oviRnj9IZeDUZMXk4QbTcd+kyWrhlq3J8X7h3ZpFnNcW7uaa4x
	 xlKPc/hLSV/sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 553BEECAAD3
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166260545334.11834.13325939400798137952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a58253a6c0f075ee89cb9bea5087ba420950078642af1816ad2455ac859ef476
Date: Thu, 08 Sep 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662605453
