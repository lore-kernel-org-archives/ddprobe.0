Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570516D19
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 15:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09B36C433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 15:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679067066;
	bh=ho2xhhR3jL2sRlz50IvV08xSEtkN//Mmi3C0s06aYFg=;
	h=To:Subject:From:Date:From;
	b=Y98ibw2Pk3sltipQpFAm+DHFrWNk1JAp7oy/7WmZ92q0NXph0LZWY+9OeN63JD+w/
	 3PCSGhWCrAXIeYNvLHK4U3Ws4uRkCxnCRu8JoLS3ewnBCq2GgpnVAROpUrEtawPzWo
	 8dELldt9E+GkT5mJRyKxkrUtgIk8srKkO8FFCQr2pgtRBpnjSQmHEhkabHBr2m3cMI
	 pEe6DuIxvV474YwpdBlT3AUTTnbC0+ohRvAr/q2lRnuFMrD3AHp4JXIg21ynLv3a+n
	 NmybvPcBEgVkKRaD57li9gD8stfGoo9nuKzKwCF/MiPI24xgH5jM0GZTgk3YpXxjsr
	 WBgDgD0ln4Brg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D764EC74A5B
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 15:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167906706586.8687.1431578612524070348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039a03cea7b6d9ea67e06eaed34fcc183ef129e3934dc7e0bd0ba4300e10b49a
Date: Fri, 17 Mar 2023 15:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679067065
