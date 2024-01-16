Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A1B1BC4E
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2Ulkm9y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77201C433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705412296;
	bh=1VdSi1zj5CMiAo1dyAN5HRqoeqSY8c/RXf6iCQmEb0Q=;
	h=To:Subject:From:Date:From;
	b=H2Ulkm9ykebEsKBmb+BhTtbXMK9NCrXLD91swmtJM1zB7FEln2Q06/UuoxgaaQcTY
	 rkYKOfyKS68qajNkolW3wPGYqVhQbfoOEdUlTdZ/okrNKmDBRrGaDUtzbO6XPEBbbJ
	 PQV7PU06ORCCjCGQL4K95D7FduEXSbQ1KaHhMdz9quQsljmnlH/r3sFDqwk+hd/x3G
	 OBHC7gGvptJxXdj+NGMYE10RoOWHigMZUEkNQOOiEZZMa9n3Ud5Mml/qwan1bkgZUa
	 yzeXo6mms/051Ex9beakbCx7orEqQMyoYD6a8qXlioN8xtSJSg+ucD7VgkmV1gSHbB
	 J7RvYjfCarWeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CBADC4706C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170541229637.8032.10990548901586382339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c2b24f1a6edf2579a7c4032f4a322d3df4de35496809974cc22df68a20ff67
Date: Tue, 16 Jan 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705412296
