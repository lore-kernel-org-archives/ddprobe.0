Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBB8110E3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AFF0C433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673776887;
	bh=r10fz3r7xoyWrmpKh/WV0CIqdhCVopcoyuDV9J29aKs=;
	h=To:Subject:From:Date:From;
	b=hGgGUPKHoA1Szm2sBMSF8saGcxB48czVcG8/SODmQI6DX0dZR7z2QIKfMMPtPyvaK
	 hcizmEVx0xhD/NX6XiyZs3p+t80gXpW6X3XnQ9TMePHiSAhBoWzpecsHRB2Na75CQI
	 aVJ84fJYt21cPLyA2tMRlOMd3KWsUQHtU0DkvjObKk7VEEzciW/6i+cuLEQjm7jrdL
	 3tGzDFgxSewFZwTibaGMIg5seKV/fTbXUor8ECQy/QN9uv7dBUqRr1DFTNwKfLod76
	 is/10NlTB2tA0uFPnEDEUfoy6C6tYWIK5nHMRrSTAH3VwsotSpgvkVC38u3SwOSAgI
	 Zw9P8R5GN3bwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E18AC46467
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167377688744.12748.8399859461702017432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c47c47a826e6e7b50426d59c68f5f37f336e91ea7423cadce2614ebc63139f2
Date: Sun, 15 Jan 2023 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673776887
