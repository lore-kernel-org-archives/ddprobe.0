Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFB343214
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D1C2C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669761654;
	bh=+BoIPsWB3vPeROteChPLUdX23uk3RQepaIzVzvQNmkU=;
	h=To:Subject:From:Date:From;
	b=oc1AmiakwnMfex850ZB9EAoEZI9bvfjth8ZDJS+t077mKD8LzVQnTfgmgn8gKIxWU
	 7wpigIr7z/BmljRF48px4AWfAesJsl/MWYjY+3HdNnj2FBYIxvorAf0wiKx03DzNLP
	 dbqJeS4ZpwX2WJ01Oc6u88RqaAyeg3ziDfGLKSLtJAZ7zJa+JaOtBlCNp2bJbi75zS
	 2ZOk+/kaWi9BGZAfbezMnjDPteEB8wVM12UP0cyGmmX/eqVUoO6CiTA4Jg0LwlCvtX
	 XnGPua3qFHsQwUiv3MVW8DSm6NUBXDcSHgT+czl0JeFeMgzk6t3HgKy1tltc2TWtNp
	 idkdriNhGP47w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51640C433FE
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166976165432.14236.10540243102541111714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b781896c7b37be03a556dd1cd5cfe812f96a776c4d7f5b332a12879c49b7b13
Date: Tue, 29 Nov 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669761654
