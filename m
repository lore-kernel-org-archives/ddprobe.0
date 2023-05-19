Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247FE1119C
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 20:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E68C433EF
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 20:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684527485;
	bh=/feZSRIgUQ5VXja8RH8+Qv5rd5PWUuuz/u4AlTe6R0g=;
	h=To:Subject:From:Date:From;
	b=U/VqqeHx8WIgu5r6P4MZV5sDX8eNjKa/NBdJRG9KFUlIvV3TrAc8F9K7JwDPiraBI
	 39kuppJsLjfVmTVvQZHRrG6ytrTU1NiNkRLFniAP5yZidemqWo+toTda7FnrYdlTBi
	 Wb2hGuGalSRpvcr7VXIikN8dF1PebF1mpq5kCPrEwbWA+c9icC98Xl5+wtZlKfuT6Y
	 ML/kZcb3JIojeXafCSG/TR5cthmsCNwCJ+Tv/BlXFlPLGttZ/u1Aea5Dgx/KehANfD
	 Eky8PaexqnqZy5axkFdZF0/SZtrOB8ftjEyGaBRRDK89TotadmGtxjXMcBGNGHJixb
	 0GWserbLAuxsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA5CDC77B75
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 20:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168452748574.11708.4855065797797124404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89e7682c7718fbec517ed6ff8f3d535876a9348db7a2e1bb67b813215ca87ce
Date: Fri, 19 May 2023 20:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684527485
