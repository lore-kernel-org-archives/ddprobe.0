Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190665466B
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PghR/1Gn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D12C433C8
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702333096;
	bh=tRp6L+goE67H76eJFjOLTKi5ilGVkiMJPHN13RwK9W4=;
	h=To:Subject:From:Date:From;
	b=PghR/1GnjXwCdbvu0P5MQZcgSAiUBZPhAh4UCSD40FpPYpnZWWEqXVxshlhUC0378
	 1pX/hpX9F8TwXqejXcemQiL+AkT4NUZbl0mj9vwjnVjHy8Hda9sJRi0Q9/3HvjeTH9
	 mAeVDlOHN34ZIArxKQgPdbLLqqngAdb+YGLK3LtH4vEUFpPHiJ0L0ABy+xIqsOrqmF
	 Si6yMmTXLQvX6XxoJCIsQ13QnZUyCDQHeKV3fW8AOdPzRcMBI0wQi0kkebB284vajj
	 8RA79Q1sLcA1LB8rTdr7k9u+p/rc3nGBjq+sfof9IcgKxCbLeKxbs5bXw+/dmC4rAp
	 L3Vo0VWMWRidw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E974C4332F
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170233309637.26319.13302562073673449138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74bb8204e814c266b5050cad217664e3f878bbcf74e01ff1a4d2b7660a47cb79
Date: Mon, 11 Dec 2023 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702333096
