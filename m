Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787E67F
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 14:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E23C1C433C7
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 14:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692714248;
	bh=ZvbXinNYdz7G9p/gvS4wJxZ84WYzNaVTZygZipvL59c=;
	h=To:Subject:From:Date:From;
	b=hDHERgQJ+8Mt2WuGo+JTFz2wBNUmxrd5iN04j22ZkfcbP7qKtd0fFQR8Y8wPTXvZv
	 R+XiXeXBdtltzh7JypQbkNF7uznYFDOM85n4JTsW3zolkavZSPOv7rkwcof0e98uhj
	 hb0D+rSe9bpjVMIhWiytzKKpadm2JgrKq5Dr+onhOkBlKeAmRTs29f+7OGj8gF1wRX
	 rNHQpaq/NQ6Cz0HQB01Gjby3yjH6jKBK6dx0sBDizWHu6CZ7a1m7y96iIPUEwHwLXY
	 ILnNheFE0jjqY+5r6Ay9GviwZs07WAEBySn3nf0zsc/5kZ6AK5h7M/ErryOeurLrP2
	 tqmcgGYx0M7aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C421CEE4993
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 14:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169271424875.27873.12628364715881710329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb6f625ff71b4fb0b2e497f4e031bbe1704dc4d27aaec0d9f5f2d8392d96c54
Date: Tue, 22 Aug 2023 14:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692714248
