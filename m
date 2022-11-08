Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC38A464
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78DD9C433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667944254;
	bh=pwukG7HdvQ4OqbrgrSs4XgbHROrXnr1XfeGoEsZYN8A=;
	h=To:Subject:From:Date:From;
	b=G/XhROCQZYdv+HeE5nQEcO3Rw/8E0w081ebHALCO/3E/dmQ9LxLvxKmaE18VlrfC4
	 LKP5smh4zmIpHPmwDpDMBF5PQ5U8cPs2S9tRFpbe4CDw/gYB6Tgt/GIg/xZ0vu/oNu
	 Q9/VEGcvygftMnFsQrJjfDHedLnCKbglw1qLM3zICB6gsbBFHs4pqAM5aTP3Kh8ShW
	 2NaSRK7gfzUOcnEMRP+/cRzEY4Dg9Kj3nYP6hIfYtGged7Kg7JyQR2+71u12mjb3uZ
	 HPYeN17umdVDqS7XvUzIXneffvnhoFHQtYfcZjEUwoThJpovLj6PF9011A3ZPkn/fU
	 ZMNAQCHqaRkFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A1A9C4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166794425436.22420.17443082682853749126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab1a3c677841d963e9bd0c9ee20af27da8d6a1aa56b7770bad36a35f786d6245
Date: Tue, 08 Nov 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667944254
