Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C10C4292A
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J94BtV8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D73AC433C8
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697756296;
	bh=tdpkxHKKLKBVp6hAix+OALbfPGDu1T42kPZ9TYZBEM8=;
	h=To:Subject:From:Date:From;
	b=J94BtV8/Abks28LlJLreMK+mES1gbe71WCdyoym5EyZ/cnXBes6Lfl9fj17zuBjvr
	 LwJBBlklWxGHcyPeSkJuboI0eWNd2R03FhcIMS14vsh2RIzkTPxa1EBf1FjI6NpuEi
	 SLMw/Jit57wtLClCZ3V9eBZ4ow7Jc7qlqGuwvohg0B6kO1R17iysmHng+radQ/xJ8/
	 L976yrggiHhZaPiSMerQQp1ucmI5lFhyNwz++6ix5WOm3znMKr86wcE7K5/CiXEItx
	 xnB9FyGkl0dHK8hFL1ISa3+kFIlj3OYCS5CHe3PCIPEZIzkZQyALP3VKzOOsKBE859
	 /jpHR79PsWGgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A92C004C0
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169775629639.11438.14738838360149172709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99e4af8e15fe91ed61d06527d48159e1ec516009001eea084d903ec146d31dc6
Date: Thu, 19 Oct 2023 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697756296
