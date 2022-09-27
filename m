Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCAD24C64
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73218C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664308253;
	bh=Jf3O4eDH7CnmemjSxaiY4nL03VI0pYxHYYYQTsYeAGY=;
	h=To:Subject:From:Date:From;
	b=j/DdJX+gouTUw8li1rtUkFzeMzkJK9Gs55wHm1Zpcro4spPhIDmovHDHsQ/RQLntX
	 GL8oefhMe1ed95EDFDZhT0SAhZAPCWDPPPAXVu53r7p3TZ8QOtDts6DvsS/CtPgALL
	 qILf++Yapif6YrOQzjYB4NfcOhuMMoC6RHRCU2wYRC9YZTB79GJYCCp3zfLaL2/70k
	 zH2ZEucWobZWk0dQh5avt6vys27nfSTTnBdrEupYcQDfrTZP1PCntw3f7hN1sRpdr8
	 T5ftGfXQcYJlqP48XOgzFcJWGXh+SVQZUIqGK6HWNqY2QfxDcQTe1ydn6+aANiZ0+B
	 EpTD02M5RC0Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E3BC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166430825333.4284.16337425056729585800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f0c3d5890da72c2f13508f29fd617061ec40409fcc39da354bbcf06150b0ce9
Date: Tue, 27 Sep 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664308253
