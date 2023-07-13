Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 768897FC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 07:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2196C433C8
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 07:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689233948;
	bh=7VdUlTefA1eg4vKwn5KcyCPqMRF7WmUjIsSvHwKrakM=;
	h=To:Subject:From:Date:From;
	b=rgThYtSzfkw0WmPpvWTY2KIxCKKDkAQV7l5nzczHBgfHZ89Fm+wTnyKIG/lV7QcPi
	 fwF+V8uzHWTOGbnRahw2Zs5GjcWE+5ycvHK918LwbxlpSPEOBPN/HxhI4ylPREuJw0
	 7JhzlroSSvhd+B7I0JcCfwKpAQJvrj9klREYfFHxo8L68i9S22rh8esGiRbMUEkNql
	 tUFVUong5+Fqa2EUevWZQaqMI5K5i2vsYgSPGEDHi8Jecq4a2l3AKMajeDDYZczPjh
	 JLWumKpCYS84H0j6ZODIBQDqmE0AJTXjlTk7rQS2mRo8J8k0zbHLO+3r/sL01TRNVw
	 1vcCQ691wo2vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B52D8C001DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 07:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168923394872.15926.62218542238807794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5867eb8014ba70d9a5ad189b126262b30b430c52d71db55c233b801c3b0ed35a
Date: Thu, 13 Jul 2023 07:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689233948
