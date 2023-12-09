Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C1C182BE
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNheAaiP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76BC3C433C8
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702154896;
	bh=63DKPf9iX3VWQLzhlyi6bdObqzsp82QWvMC2bZnH4Ho=;
	h=To:Subject:From:Date:From;
	b=pNheAaiPKHOGvTtxEreEb5RgqMyi1EG+7Vottgjn2Zr7Ish6NIoEC6o1sT3RY1Pyo
	 NH+2y+BfB1//ekqa2sSpC58zNwmlvgk3FIWHUtHpaRFahCKX6aN2AIqzEkOwx4xHJ8
	 zwEu9qFlg6tblJD4lfVkWZ6x9gGux3lQPnFmP2NtJuxCZYzdynceqx20EWwDjp9dqa
	 KRE/1/XHhGCe5zkrug2gHErwrkkz7aLWnmJ/OkskIgaLF9QbuS4bGllrGblnO8l8KW
	 E8KYUs2Eldr0vt5pq4L761ns2RFVsWLrtStH5m36c4evFp7t4ZAzLq00JcYAaDtcch
	 KcbDju/QrzkxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D5ABC4167B
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170215489636.18365.2340696238842482586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c34f4fdf4e0c6f186ac74638c0ca8b985e3d71dbccc6f3601ae0fd6032671519
Date: Sat, 09 Dec 2023 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702154896
