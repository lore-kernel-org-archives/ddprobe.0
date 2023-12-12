Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 011381173C
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOePIBII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 842A8C433C8
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702424896;
	bh=baz57AWSYZAge9RUxZxJ7Tulne76M1ELVuOdo1SidTI=;
	h=To:Subject:From:Date:From;
	b=dOePIBIIF78Ozo6fRKJFIG+GVKpvJOnNRs6nuBcPlq/8E8bBPHXAjqG16je2mEHF1
	 KSA9O4vLcuGvUldB1cLyF68lMOiCyBGmtlCyUOzqSOzi4uZzokQkoTDcUrq8DuTDDr
	 x8X20Ewxrhu49qNuoBIiABZwUJHmvxRIEx8TTxkdKLyXJmPwL9admHRbzK21i4p7yd
	 BGyMNzmCia4bBWx7K5Ro6D/O1q/J+Dm08wwyTJaErb0MAnjuFf8F3RBwGGfzk8aQE7
	 WAl3KCzqerWyu/MGXFpLoU5iUux74PMtR3+I+bzuEb5jNbipWcYIqU2Rd0xQjQJHyR
	 id8LLCXU5CA3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6783DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170242489640.15189.15005457902580179515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 405259ea74f482d538e0c97d8439bafe63253963b87ab6781ee0eeb841bf632e
Date: Tue, 12 Dec 2023 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702424896
