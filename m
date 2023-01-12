Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3CD479C9
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88B8DC433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673534487;
	bh=1vqbB5V5wSJHgYrqOGoz1Wqqj1Js4WOazk52U/QKC7k=;
	h=To:Subject:From:Date:From;
	b=MyINz/znmfl7gs2HPiFeM9t4+HHejKYg7IHlkkyl0QeFqI9nSYrCqcd3Lb8Iti3u0
	 JTfg4GWdP/eaEgR3ssPUTk1IOrz8im9S49ix6qpOI9vOBO7JRUlEFhWELWp4WsoTu6
	 tH6yBhHMqzTrcLyWP4Zb9zl5ubzc3PLAkaK3jCM6TYDCoDZ7xlKgVzygar5F5u5hVP
	 dgT20OKFZG5Z+grB9h71lzSvuWEYLBy7zn++Rc4UAXZsluXJIrqZqpavaueK9SwfAO
	 7N5eTvkF2Towhwl1fSf6CqJSyQjGBw/Fx7qy92s+d8D5jfUu/H88ph64qbmOsMgoga
	 VLnmjfuYMxWAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AAD9C67871
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167353448742.2735.1387694359065349064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac23681fb535bb7d067eadb3e57ea7ca1796fc5a1b4986e4ef2b001ae1fae67
Date: Thu, 12 Jan 2023 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673534487
