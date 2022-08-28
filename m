Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF7628E7
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 10:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7281AC43470
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 10:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661682052;
	bh=h3mx/qIF2f65eQGBCNWTX7u/Lo7is58ShFONyjuWG/E=;
	h=To:Subject:From:Date:From;
	b=cspS5xJ8Mv0bbjI7ihyHIEtMD0Cuyjf/wBbPuH8t89XLHpj4AzsStjeamtB0G22/u
	 7qn422caDgBXpSNbEjClOw81QdQqEH/HiHZFGVHbtDa/75A3nlxbPQ69VJaedMPpw7
	 5Y62YKr0g9h+FODXhxQsCdbudvG1iOoXxmHW1DoXrZwr62fobyA1mcZRyTEz+f02b+
	 BjV87FQ0vKz/j+wWKkAAw1OmLKXBTSrAkOOtSfnGVeitCAT388yj9jw+H9UL74TFRy
	 xF6XTXiMr3G8VubVRktn3ZyeE3v62ZWCoYBSs/nndna/DZg57tSXuR3IAJabG1Vwnb
	 19OY/KsVJoexw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53F47ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 10:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166168205233.8916.14385485095643573776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 058456f71a33f82efb2a3e3586fb7ffee67041798e0fcd792ab974338635cd15
Date: Sun, 28 Aug 2022 10:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661682052
