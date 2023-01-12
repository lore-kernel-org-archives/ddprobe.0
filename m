Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D416B366
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80B76C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673497887;
	bh=6uGZP8Dch3ufo2gZEx9TuyWM/3OEFtqQOIhFfaZPSv0=;
	h=To:Subject:From:Date:From;
	b=FKX5KjOq/1soCn+Uhn1ocvCdLZhBIn1tpSWLvn0N4FO95zEvIfITo29GpcEhvweKK
	 iro4vutqBaIs3i2lzTEsCdesrrLVP++LxmdTSMNAV7SCTRBH1/gO+V2Ou605ZQ34Xv
	 rAUxnB8IyrEQrqTX/ubEfukkAViue5bUT035pExyVlRtzzw4GABFa+wZHy73dPrYqy
	 I5nXyXQ1a0U28WP6G+vvd9CPA5kb1fxYSf4XgulmFz//Gs5dzuqO08CdN78hj+vR4W
	 yiffcFdCP+0k4dXNvnO68pVyke0eqAtUuN1TdFKMk8qjH/MNNTFTReBXeIL959OX8A
	 7Y4nMIQjNT5Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AA37C54EBC
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167349788742.6981.16001954783049659072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c03259a3bfdd2b60bcb8154731a9bfa5a87d3b6f92de84d8f6a708a0e3ed445f
Date: Thu, 12 Jan 2023 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673497887
