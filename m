Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FFA6323C
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 15:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02B6AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 15:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676733966;
	bh=MMvz7GPYsITKAXnmcS0bkjHgc1f7+io4XXV4ZorsuVM=;
	h=To:Subject:From:Date:From;
	b=VMArRUnJMCmkVOU3MWJBPGgryqjuEvbcZoIt27FkAvvpPviJJVoGXES0Wt949NMyX
	 c1JWoiKYT0QRC8nUKMchX7FQQ1+XpyZu8rkKCj4gzV62BZL7vcoubdsZP0qRUdC1e0
	 l/MTfkeHU257IKWZM9w/TPKjzfcIyDDFRNkN9xTVh38YrlW02IoJ4c5dl6eCDYvWLZ
	 WdK6a/D1jieQ8KioW+ss+/zXZ2+0OcvSGyYbEtcWjMHTJqFS6yZMbhw3lhrPrE6pkB
	 Ueyn9s/ds3rcQp5IchfNtnxchJoqiVvRLWLVMLcDy5mKAsw5aaTooX4IIWKtHtdMdA
	 yOTxwjXkaUytw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D39FAC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 15:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167673396579.6801.14455900739687694251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674a445aff3c16bb4990fdaea1a5fc99fdfe464ee351ae729ac4c7b7533b9ab6
Date: Sat, 18 Feb 2023 15:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676733965
