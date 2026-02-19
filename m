Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA992F28FC
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771532694; cv=none; b=enkvGyLlCfEjZK5Y2R2Bqaxc8S0roMQXTtQgxwzCaaCk2xkXo/M2IUfIo5ET10Q1kSAPPG1MkquQ0x9Ber7Tgh9s8rjiTTkzNSlAeVsnCUMYbdJ7CW2383dgaMNBg2ZTFc1Msu3Pi29CNfbzHE+3rpEqVt95gHT2d49q7yhIZvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771532694; c=relaxed/simple;
	bh=wv2R3O2Nh0n0YN+Hey28Av8t5fsN4Rjr48ZH6CNZpX4=;
	h=To:Subject:From:Message-Id:Date; b=oJn4fWeThrIaEISMkyqpMHUc5Jpr4KuM9tyNueGnlJygSaUIwT38qn/hlFU0BP/dDQwyEqi/XaCmi3YmNn/4OFc+YU/8Oz9FqqIFYcStIWUaNh5RgAZFHgOwNHbLhMoKlZCytKUuzsNLMq1MdvOgnZA/t2nTU7R33Ly1w0ntDy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRVDEABE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRVDEABE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D95C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771532693;
	bh=wv2R3O2Nh0n0YN+Hey28Av8t5fsN4Rjr48ZH6CNZpX4=;
	h=To:Subject:From:Date:From;
	b=LRVDEABEvlWZJVsocdzkBoEEySnwdXSJuUOYXyu/6K/IdTm/GhKe6JuL76Q4PfwnI
	 cNOJzVXL0wxGlMcAz8MT8TQVUAUIZd5OZDiIPZqDtLyVIsC8dNhOWh2YfK3wC8T0QU
	 Hhzk0Vv/brLDrxiG4ghJqp9nQrLwxW3fwQPGo6k04vVXQYVbYbKZdxKZEWmceF9xux
	 qGGI/oJva6NPP8SuxiSmpMpO284MEzch5AEUwgbE2qwJojHVSmjKVnOlVQnJaOxXIJ
	 9rfsNCPqpGH0wSRu/xA/m9XgZKLW9h61K6/Jy8C8ThEd58wSkjilYBDbSnpAvH7O5d
	 NER6TnZ+WsK7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCB1C531CB
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177153269361.11007.7153916971546002530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1c840cfc57a151efc042e8ff456b774b2ac413390a9f03724f022ec146545a6
Date: Thu, 19 Feb 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771532693
