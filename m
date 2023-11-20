Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8E41D6AB
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHW4ajXp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76DDFC433C7
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700496496;
	bh=v54l5tLaxUSThK+uHN7rF1YI0IktPZo8RH096Jtv0WU=;
	h=To:Subject:From:Date:From;
	b=GHW4ajXpCKbKIfkpIApZ8j8VSzYqzZfZyGBi5GSJkcBGmalKbhtdB8w+BaG2Mmb9v
	 WZMJVaAdIczj7d4R5OwtSwSkwDYnB5o1rrvdEhN88wnftl5ozfGMDuSOiKVqnEguqq
	 sPVAWtPBE3aRGztV8zwPapIU6eczZEgRtxEkjTTGMv/4qoq6RDG5s7eQ7xLTdShg54
	 Z1qqTIW7U55d0b8E2iKpQSRqpaDX5MnbebEgJR61+PucK0WwNguRNFMMKU7ycaWc2F
	 eaNSonCe4MSQImp0T7ruWoXEJwFDcnQod/fD5oZjA/l092tGXfaUnWyOhPC6AvwB1f
	 n5v2ytB6lpDBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB76C197A0
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170049649637.5063.13401428585326600512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b2b746b7954c7c8ede01451a26aa684edc980809e334d27dd51a9b8915cf0de
Date: Mon, 20 Nov 2023 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700496496
