Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7B191FA3
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B120C433D6
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669203054;
	bh=odPF5pjrfEMBUi7ljDCzybokAP3BdFhAeavoJlUSzoM=;
	h=To:Subject:From:Date:From;
	b=RxSOWRpfTLuHB9niGU46Zhf22zNDxo2glFfnigP4EAgtdKn9btju9uoHN2sUhgdA/
	 UPtOe9H3q767qb8JpbwpZC1XVOP/milsiUxgE40Kr37W2r3Hs2bTE/JCYB8Bdzv3d7
	 fg7dr+0x4dH6tMUdL3y4m0/RkWBbZ0TQCkUDgWKNeJJ+FdmwvpdT7zdaVrz6X7wpeh
	 3iTSJbLpL+pHfjvor+1M6PBNwBvxc+nB7TQBnyEqakLFz5wY8LmVBsYPEDFdr8N6WH
	 uHuRCtj+7ASuzUmA5EiVbMee5y9CNJlwCLyPIdkgSarzP6L8p0AEAgXeuET9ok6QFw
	 GcP4yYOdxEHng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E53DC433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166920305437.1109.8742824816652385586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f0c2a0f733058b3337542e44ef6e30383d49f3493138284b15ba8b8d01dd594
Date: Wed, 23 Nov 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669203054
