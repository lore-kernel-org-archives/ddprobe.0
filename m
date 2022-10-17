Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B44682568
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AB63C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666017653;
	bh=C1A9tTQIFoD/vaEWbAS0hn3dI1fLiYYBwMKwVCVSYtY=;
	h=To:Subject:From:Date:From;
	b=O7IsSciUODxIb8b77U1R+ZOQRSOAH7I+QhaHe9CE5sWcKKuTroDuko/FlZbRAZFTV
	 A/9geIIRDWweaOGc5SPvAFZbdoB9lt+lDtTeb0FkzqDHWFqNEZ9hIFfGzTpExUIlcS
	 E452NwxWvuzGbiMzWDK5gcHXOfh4hQux7gvsK3XrMWDANy8ikcH/g4jPHt5ZnhC8fm
	 UPsctuAEauixv+D+T/dMNQPMjTyMngs5DwHVnrx+Xn/yoP3m7Ueabp+A4JXwcmiRG/
	 BbrVOmcGileFzoj0bECHOfvsfd3hsBAug8NiAbji181GYvacDuUtCLyn4B+CPm1z/n
	 Kke7ONk6Ff4Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5296CC4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166601765333.11327.15240680801656296249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e36a6e928bf603a396cc93b7e94b868f1a0d410b6f858bef42ab4a8233aace
Date: Mon, 17 Oct 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666017653
