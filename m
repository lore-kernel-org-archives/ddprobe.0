Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02387E
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 20:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CE94C433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667332854;
	bh=5KjcUiV563zkasrakc2EwLNgfoEDsv4sifYFxXqQEf0=;
	h=To:Subject:From:Date:From;
	b=I+gmO6+gLtdU9u//gTuSu0dc27anIuR3GIUnOmunChVpcYExmOtblfEdLPRd5du3t
	 Y6iXOaPkqPQxQrjpfn2N3P6LzTuFiR2k+B0DEfqftg+fW0/aIxaNMQH/fWT6FZP7ob
	 rG71gF5Yui0gOE6INLzxgx5PaZ6rcN2np8/2iVs2Q5srUXQwutgvaSyHXB4SK6lre0
	 G2Ffy6ClsNgSLCkLkttvlfIzYJHCNfBbpoLgBbiqFO3MaNnFwAYXUq2e9s8yxM/Ya6
	 cDz3Xy8l3myEwskzOx+1iO3wnQMMh6nH9nu2yTWIPFDO3COlwngMYHaZbTHJdXZe+a
	 E8dfwY0HydOkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5005EC433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166733285432.12271.8746860653855387143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ada07507596fe9f0ca8663bc48587254ede32e40afc79b504960d5f0beb784
Date: Tue, 01 Nov 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667332854
