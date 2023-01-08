Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3889173
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9725FC433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673136687;
	bh=jOtHi4TD81HK6yjiIpKoHUI2OELwjw/luzgI98FOH6o=;
	h=To:Subject:From:Date:From;
	b=pba2I79peqcVkkd5f7Tn7s+codDGNjKRn9J8DKERV9I6KtXr2zxm4XkZ3rHbmrPKY
	 R2yw01XEj5+dipTurVFFTd+jOuIGFSSWmJZUQh1m8kczuy03CV4ZtdwvGFxXZ/a0yV
	 1LgFUY2yLPtJoM040Rw6eJmCL9NBCIMZc6Z3tiX1tSd3oBNRUMVHciL4YnN5y/FKHT
	 T7b8yBsd+p6GiqrOVf6PWBa88d8hxQwsDdS0ZOYyQ2lDGv8AXPAfdI8lJkWFXDsTsJ
	 aoVnFAmoQT8CkyT0w5IjBpy+84E5vBNMIxwbmloTqMRkuJmhEXDUxTMI2DIn8yMSHc
	 tXCV2sZma9feQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AA74C54EBC
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167313668749.27819.3757227813292966141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac26214f5678f118f223322956ef1cd19ef1463c1697754204b85673c8e53a0e
Date: Sun, 08 Jan 2023 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673136687
