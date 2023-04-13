Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3052C9C
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 10:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCDB7C433D2
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 10:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681382825;
	bh=LXA1HAsSsv/8Hnybw+HdMftXQlvmYNN1mwvyjvWAbHU=;
	h=To:Subject:From:Date:From;
	b=LPI6I7jUt8Hwo3KpWaaWdlAecVzyQ2Rpy0cvoSBkUojZiuTyOmEMzl92NZpaIz786
	 GWToDDIZK/tFRNIbBK/sGlwJ+uEyR5X605cHRGtfFPi9joFHjbMp/5//2jN8E+DV6I
	 Oanrb4S+nTO4qLuG96qo+QX7oSn65tSqjJAHGVk/AIOmdPvqRbGp9nywBeckKkeY4o
	 n3CyerBAwnfjJqSzzdUkBcV5U04n+EUNGBfYmsAQPMXwbErcrdmO+Tg1p/E4ugvwwp
	 xv/21W4QZvDPmM2xvK++W+35n91lUsNrXWFdCuhe2h3nbrMk+nlUByiCgSp4sGT00/
	 UN5jRj1IXLxjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2ADEC77B6C
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 10:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168138282579.10264.14755657576778000119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94da1d04a40bad64cf6178a71b7f00aad52f3e3795f69f35a764507b268bcab2
Date: Thu, 13 Apr 2023 10:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681382825
