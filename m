Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAF217EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 17:11:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2156C433F2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673629888;
	bh=TIYCKTfrjP3KmY266CV282CxCcXlAcWxnPkx9vW3s50=;
	h=To:Subject:From:Date:From;
	b=asKqJ77p7avRe2DExQtCtQDRVDRQz9oDKq9p3Xa4mNj6yp8D3vvpDVDWWlYJOUqXa
	 EIyP++Bj2J6XsGvTN/d2nbGRapBR78w/jcP7v0gbpp+TXoSl0LIXKiVdFgj8kIQUI6
	 9pHPFB1uxszOkPobyzhM6+Kjvd6CBNzgNcq0Kd3upd65CibpNOzsjxQc8czTbhmc6z
	 ZvNZ4z6SVkBbv1SRVqgCGRYn7UXTiGa5kgumDD//4uVho/AvPJ9Q7E60SqkLq0uEZj
	 3RzxN/+gp8R3Tc4pqWPuRiSCTArG8I1el8SDkCflWpaQsRlSh/rgnUTXdP13mnch0z
	 dBMviDpjM1/9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83079C3DA78
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167362988749.1240.17159912280752284707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4806216a9343e06e42be997d0036990e46fa41a94901846c90671efd9fe7c6e9
Date: Fri, 13 Jan 2023 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673629887
