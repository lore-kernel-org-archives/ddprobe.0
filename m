Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165FA21C17D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765841574; cv=none; b=iL4tgRV57I9zaYqRCzkueJH0J09D/rf5CFDLHNtbfXUOaSTVi+OaxCUA4V6BbjSXWYYXtfDO+R9KuAkjVTYuSKh9xUw8Faen/5QL5MFdB4/0fhv6wVkuUqFVaFm8MyB4UDYOu/W2Uu1dipo2BhTGzKY75aFhvSo49qSkFVlDPJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765841574; c=relaxed/simple;
	bh=1bqB7T9L8/1IEZThhuoOJj0pYdl0tFeSVN6GQV8xQ90=;
	h=To:Subject:From:Message-Id:Date; b=KSVOQZQltkN/VF1uYi8BWe2+70X7QGQVsODKYLym9467Jf3t4izBXv3qxNjhBfEJ0jeO1bB1Hf/idno1emtAsE4dJKrZbosYxvJdk/ZkkAhza9Vf/Q+J9bqBYdCE6L55dTbCEOVOzSrghJ/aKT1Go2K3oFxQ04iM72QJih0ZXvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8S/bJZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8S/bJZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72F7C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765841573;
	bh=1bqB7T9L8/1IEZThhuoOJj0pYdl0tFeSVN6GQV8xQ90=;
	h=To:Subject:From:Date:From;
	b=W8S/bJZySBxMw/UmmmHUf0CLk2aN2/n9sZjI0FAknT/5vmQc2hqLnobTKqk4/Uyfm
	 w3bSUpzJmo7sqD7iktzUrpwCkMup0GO9aeibeZHvEU5A9lp/0bCQGT3Eyv5m+Hu6F8
	 E3I2w32ru/nl88C/8I9ummcUDENSjZaf0Difaqri84F0Fi0sRuqcAb/AXEnefie1ZZ
	 nasOLT1Ni95/q2DAb5o2AFanWW5Kj+pLDHqmaE7OwhR7E83aPItIcX/nawrC3u3g/k
	 ujMJVQzjcpAO1Sy6NeLdGKcu6hyD23PiZ27t4ZZMOmhtvEPUtp7HGx+7sqL1/V8fWH
	 6ypYlYrC3xTZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92411D5B87A
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176584157359.1134.1857977943677428629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94ec4a79d85e664d7b5b191f3c14a3a8617687e78a874928128a2f5383f84923
Date: Mon, 15 Dec 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765841573
