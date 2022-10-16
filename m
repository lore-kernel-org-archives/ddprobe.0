Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D39267E1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81A1FC433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665910853;
	bh=Lqg+HLcpmsjo0PuJNkhVk141SzRNKPaotojWw3nsuYM=;
	h=To:Subject:From:Date:From;
	b=JCEgIXUhgbtApMvFsLojWXYj8ExC1UaT9XkUtXulzaSjlcaFIFkmos5Eshobw8fd2
	 8Dy/ZpXVKg2zqS5AmgDDEzU76j8iiVuAyBY/QWAfxdUgrzah3NLHIOy+QoX1t/8rJO
	 RZIVdWUom1XzxJIwo3d7sSzoaLeb38BOJ1Evi7iSZK0JaS5VW043lmOaBZJ5454T0I
	 3hj0CnTOFlEvFNlCa3/s5q0dfwciAm8v+xZWVm1Bk27WErOBUQbmUAdu+bzMkBPm8o
	 hKhbmdMVo0Tw86pNiQI0jgIaj7galgfH59A3c4kjks9fThUaka7eKSTzgFA8fOgFG5
	 slykYD69MNnpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 654B5C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166591085337.5863.12326479952165422477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3066a2a44c4fa71966b7599424ba86eec6d3b0e5dfe9aa8cba37f53846fc532a
Date: Sun, 16 Oct 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665910853
