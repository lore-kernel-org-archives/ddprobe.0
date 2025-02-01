Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF871C1F2F
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738423554; cv=none; b=bTZZZoQzBC0+bpjuub3EYyXUbMejYn8287SCwtDCn4QIdFlnaa+IlY4DR/mwxfRz5810cZZvs0rRXvZjdm0MofOFVzpi091+Xncd2OPPnBfy7eEOF6dWMmt8hb525/Q9bImH68VY0HOEsAJN+LrZ4gS6xJ9CVcOq+Zy2nIublQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738423554; c=relaxed/simple;
	bh=HZ+WTiOsPKHhw59vId1cA21kVoHlSwo/ClBdWPD7M64=;
	h=To:Subject:From:Message-Id:Date; b=o3l0LXH/9kpSYdnOk/QAxtti2DqYMzsLI5Z1QBkSAWb4UP+lypYkhF7RCIjLkA7ELBJcXUpnh6iXEt7XlGj0VG45vy2wW+1OYkUZSsnFaL5JcPS1gRWyBQaJiSZiop8FVWyhHp1wSPNRKwKhtqEXu2SuEdBN5IO4MCULS+FShbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXYYlu6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXYYlu6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87A7C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738423553;
	bh=HZ+WTiOsPKHhw59vId1cA21kVoHlSwo/ClBdWPD7M64=;
	h=To:Subject:From:Date:From;
	b=NXYYlu6FV8nLl28xr0S9lJvu40QRb4foJJintVnWbjeBci0A0xE2chwqQozkPJk6n
	 Vz6EAiRer7B2lM+g4sYRrhorcZMkHaeerCGenApUltVz84UzVfyXrDOJx6VPz8acTh
	 fSzeZh4a/QvXhTMEY/qMzH5Ip9SuuF0FzoyyNF39Q8+XElubYGwh5gHL8uuqsU3GXY
	 dXzvmgj4vzP8hSxe1LULr9LxziIzSU4pDgfBmNdr6D5AnXYVNQSYBcHnsF/iZu9/I+
	 s1I6BiU8bCN7FDoY6/tSHK1qYTceB2xBwfbguXIRxD0v7nDcA1Vs5lkoRxEj2zXdgj
	 wCDcPU1RHtWVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98234C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173842355357.16318.5519163797583387141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 994a8fd0a105a8193de37a1df8a458effd0199e356121ecda6b2bdac96ebf104
Date: Sat, 01 Feb 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738423553
