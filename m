Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E722EC4
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92714C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670651487;
	bh=CT78E3IdWC67evVMdPw7n7EeMtaz87KsV7Fr1T5RTps=;
	h=To:Subject:From:Date:From;
	b=dnS9JYTfOAhlka0rt7p+W/PUSTFCCVwX9QAqBy6xIne7K4RuDqCrA39WZ4czvG6oK
	 nv/Y7tIBbRN/iRpIPNkLWBsQPVf60JSi+ctTXDsd6/ax62+njXbh8GtB8G1M2sBFXX
	 6FexJikmmcx/i2uC9zF39SASfhKwaon5dMKiGZFecI+uAw3xFz6BzGNqcWj2q2FLwV
	 nH1+dn3XA4bHjnTnijllDxw/J8WiOc/ptSUBJ0HkrLOhqWT/4XMHcJrag4JrrLdHrL
	 Oq/s14CMR/r50u/RsW/HLEiz/IunCd5HrJ7205doQKoMFCOCqdB4XCYODwkKpTtzGV
	 +6gTivi/uxFMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74DEBC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167065148743.20422.11564496758009695379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d2c43184d6601319c5ed3b4d877553b84d285d9eb24eba549123d949e8c19b
Date: Sat, 10 Dec 2022 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670651487
