Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1ACB7C
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78C61C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668562854;
	bh=yYs/S9uBDWTmDB9z8DfVWs911LLhEgAF+xL3NIjwjJU=;
	h=To:Subject:From:Date:From;
	b=beGDQqW0PWPZ8+Kxw+siwDM3gYUzmz1vk0IwVpR6ywDCUREqrK/xHLHjTzgvPEk5+
	 BmHYkc8n8W8uLwN68BmP5pIy/M5H4bPERsp/sTuYZkVCnjRb8iMpcR5s+Jv7Ebd/JZ
	 Y9bnTCxhvyO2xfBkWWeRfO2JoaQBH3koEkUP/kHH1Q6Bj4ImJ3qBalSnmgevXgvX/E
	 /i6xZ4VzXviQuvSiZguZRRw8BPgIDFHQ6uUFUZvMBnhSnJPZ6kDDfSu1XNFHhpMrUY
	 R92y84Um1/56XyFnAzozsO7ZDOGms97h+r2I22EF++pX9+zqJQpKY5JetBF9ffTa0Z
	 IXYti59m9mqSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54BC1C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166856285433.23598.15958010058552514312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59807448e23688eb42d59876db49e44ec355c81baaefdf138866c45383d79fea
Date: Wed, 16 Nov 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668562854
