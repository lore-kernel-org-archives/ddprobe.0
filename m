Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C04290B
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 19:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F225BC433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 19:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676315646;
	bh=/o6ZQQk2jQS7PLQPhZIIc/wXGGuFU8Z8eTisE5jx19c=;
	h=To:Subject:From:Date:From;
	b=Yvv4YVhZP2/9EyNv3+UlbO8suproJraL6+fPdmi3qtw8pUHAk00nesgR/0ZNinMWr
	 a2+57alfhk7PAzwL8lt+qmFbvj9wIqrehav8Ha64HJRrvU3pPiE40WfGRBW6RKbQao
	 YQv09WY2IIxBDKocFTTNijFdb4uK+Tzp6iHWdzRTeMjtH2crUyxa2HpDKZqEcUWXsc
	 oSj5v2NFJZvOnxqFiy4uyVQuBFY8/bTho10inp0xXHuSvme8VMeHg7Ua78xd26aRaP
	 DIgyuCY+Ip4JUiL64iZM3WNQ2fAoOSwIOKmhEVOCEINdtudRKpjKAyuS71n2JF2vsV
	 iFIWqZadHCu+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC422C636CC
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 19:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167631564579.5595.1506477119199853699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e63918d28e478be63c6177cad8835d1283320d41cd8ae9d448175f82a744b635
Date: Mon, 13 Feb 2023 19:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676315645
