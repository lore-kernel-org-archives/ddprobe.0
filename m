Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC9CA92D
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 19:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA35BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 19:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675192385;
	bh=38tIAGntOU3Fgz9PpMuYti0Z/lR+iGXwDi+OO8b4rKE=;
	h=To:Subject:From:Date:From;
	b=CzUnlWr9LcrwYnaZ0CgT/wsqzEfJpk+whAQrVbASQwFVUzq0RkQGF2nPIQut90vEL
	 /hxEi3vS2Qx0wNGQa1CdXZFBkrizj5W2TR3F5NObLle8TC2vo3QibaRBEzHuO/Bohx
	 wOgAfr4Lo0DbTl4ZKWyh+BL9HORWjLIcgpeqLweeZEBIKgnMlDAiZMA9t4VB/lT4mT
	 LMHbpoR4XaZFJIwQPGRNnenQE2H6x2eGiS84x7Z2HbXicIgNEFVcw5/TDBQ+zz/Y/e
	 D4VMreCNd22pDpNDkmCXf3z3AK+Fw6rH9g3cCXZ6U4EkItNZ+M2JKnARlKvvKTXrAQ
	 GuXUTItGKFCLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5105C636CC
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 19:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167519238573.20324.13670750977098865624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af886963398e50299056e299b17dee0fc11727ee0e5ccc88a6f3759326062a28
Date: Tue, 31 Jan 2023 19:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675192385
