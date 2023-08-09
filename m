Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7997562C
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 03:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA039C433C8
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 03:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691551388;
	bh=lZg35j4oDEo8ILGZ8QgUXOI/ECAleM4ZMQcsKCgVC+I=;
	h=To:Subject:From:Date:From;
	b=t+rACd8gFGEkOQg3C6PijOrW3e6VwbL5DtBfi7JgKDHLDiAn5c6YwWxbGzLKIeuGC
	 QbYWiXm436mArdMsYrFztnsIf46vOeTEdjsWj61BqO7CIFMJxsSN5JUvcmb9PNbvKJ
	 NtJvc8YY27AZ0j0E1KLi9GgjvqlJ5EPsSgOnt1EkGbm2cg5mUkQC95dW8Q+eT867kn
	 TiMy0DQgw59qbKeMXpAF50yDBE+PIbg216raj2+iRqBfOsFi+ZaTLtNG62v5J0dx0t
	 uVhphA2SKpbk3LwDYU+LBG/S9OVXE14n4rAeAepud06SYbw5wj1LFhrmoAs5EIMCyG
	 BwDWvZ+JJi1+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B055FEB64DD
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 03:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169155138871.20188.8973536269711241282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d8e9c4dce6bae314127d0c9769697340351ee8c13c77b076552b889cf87a1a
Date: Wed, 09 Aug 2023 03:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691551388
