Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E6836E
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70606C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665715853;
	bh=fBYARTM4hltr/9PibjxMBhXeVEsLkFWx/9qJX+dJ5TI=;
	h=To:Subject:From:Date:From;
	b=A6uuesTP+HAeZjorgfODoH85Ca/HWJLJn5tpb/76DWdR1wLNyWIS6OlqVMiUq9rhE
	 TPBPqviegPmoCoyp06ndtdljVTfzvCCIXXT1WIPHBGb1+RJzXlN86uIsPDBrlXUyDQ
	 gDenpSqgTCpi8nkRndy1ao7YlYIDmvlp5AOmEt1hH7XpexYn42VOydsSL8Pq4neJ+2
	 2EmWpRYX/Syp5hjkLHAhWBdcizE+SpDbkIU29lzV39OCWAWh0m/jtrpk/7W3CHenjs
	 IJ3S9E9i+r1D4+to8X0+OXYeZqhbP2qvRg9ay2vRotJg1QACyg2PELRjGmUp2T+Zey
	 6C39uxxpzo0cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56628C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166571585333.22977.5884163023330153234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae624cbdfa12b043984652a7ec8b7b93f7f35f7468bc67556e8940484848a33d
Date: Fri, 14 Oct 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665715853
