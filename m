Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B55C11C95
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9QVe4iW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8901CC433C8
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700314696;
	bh=UG8QUvT7e4SS1SEGyXOBC8DCUglCHWE0tIaZNnN6klE=;
	h=To:Subject:From:Date:From;
	b=h9QVe4iWqwZ/aKApdLTf7N2pmpjNGrkXVxW//47WcA7Eh0OYujLoNavm8fbxh3jWv
	 iW8UErKdxO2TOZBORwAJB5rZpXS2JZ5+D+VrQvnZd4BKq9kEQUakNWeZNnpJvuMtsk
	 jy6mf7W3aqsamK6fShZIbuZs3n7lPdw6JCe/ZoJtwOtgkMkliCMgAm0EgvE24oSZq4
	 DQCTfyQzsN0BQoVF7nD+57FKDMWLf6B+caZU3w1S1c8L5X4aQAodjN1QElvNsTqI+Q
	 gKhZyTag9YiYTyTmeWrQWDQKCroDXBv38lTavnvzn7/2b5oJaf+Bg6EWMyGojo/OU7
	 3Cht5d7w+QAtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AC02C2BB3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170031469641.28799.10387234831931212813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74c4af055b19a30946db645d0c50b9c5e1dedcd54fad8157a577a9c54074be57
Date: Sat, 18 Nov 2023 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700314696
