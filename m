Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1C3290F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83D46C433D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668032454;
	bh=EdJsLisfCW3mCvRNu5Puig3OixrbqMQsJc6BP1HhiEg=;
	h=To:Subject:From:Date:From;
	b=U00rv79WBrLnyxozF1it1tLfU4xepuP0Ps1m+gvqo1aaVb/zuW+QUWJdkJCSILAaT
	 guKWN9INiudrDsWHhZblDRGRvTy0fJruAyB1Hc9GjxjMH5Ed+AXRpyMqw30hQVllmV
	 PaHi7PTkhC2yn0nquTdVNvG5wo6a+j0eTLijfzoQI9pbwaOVN0q5y0iSlQ2KMwrnLy
	 g9qv1GKB3wgBbkRA79w6wCqAiCo8u4QNe2Ap2LUvuLmpiS+gjla5ZDk1H8bb2aVPdY
	 9Vb97zmniQ+lpxQOCDFEce9Vugx9UZ648hD9/0P/7RsVflZLJtUcMURLM2ZUMWpk0a
	 VPBl8F8VoqY+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58993C4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166803245435.31690.11618232909733375180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 869bd81dcec3832306eb22671a76680ca4154471fb27642c869025bf0bfd2959
Date: Wed, 09 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668032454
