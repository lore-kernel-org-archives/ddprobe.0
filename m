Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFB577C
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66E64C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664812853;
	bh=Njc8dbm7NU86LuPBUADxpPdvWI9XqQVAGeRaFSMRSi8=;
	h=To:Subject:From:Date:From;
	b=ODS+5ne9obvibnPVkJC6yamvj290PpxUMmTfLu3MZU85lUw51mYoZSjl9QVlj8h+0
	 wZAu0PEoXPmqP71DBl5u+P9FKNO7Xz6H34jzeSywSXcA58a/x7rUgSv4bHgQsXenWy
	 KjxYpan2xTglnRVxdh1xhLLK0jBkx1oVPi25nP9FGaGRwf1n/VUNbgyyOIiNGt043R
	 SS2SCb1i/IzcykcddSWB2yIDToA7ndyxzsbDSeiKQXyO8T814fjrUVFHVP4BxQiqIA
	 5NxrAQJux11giKQwjEx36vacNO1R7VrTJ5mE+Jqs8to0PDOp1EO8DNEuIBor8eOuBg
	 idbFDQ8d9SXOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FD43C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166481285331.15923.5067374165156780348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4998fe4fa9498cc0e99b6328cfd6046af9220736bd1350472a0b998aa97741b8
Date: Mon, 03 Oct 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664812853
