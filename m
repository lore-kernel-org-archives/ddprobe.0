Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA831F947
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 12:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720356983; cv=none; b=jk8NpHJKUigVxqbyGbt2F6Sh6FrQAF8/gFm4gqoMIEsftASLRjmGSpcRDYus9Mde1oerTVt5GFZ2wE5bgGy8Gnke816s+hLT0dN0Cng406jzdDzA/y6yECyZBA94oZfgfsCSVjSkru0zD+qgv0VxFhi5jLAQGMuatrRjnCP3T7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720356983; c=relaxed/simple;
	bh=J6O6FTi6g2BiVN+rDZc7gqpZpbaLBEJfXyo9AcKnG/M=;
	h=To:Subject:From:Message-Id:Date; b=ASYN4jgWV2+IrfgPC5Rp4IFWG4X13GYAIUwBsaKbj37nk8konkeUg/0XWMfUEQV1YLCn3cgdjujfcRqqZE+bW2zC+LvnOb12sBY9wvYKcVhXbrken2k9bKp+S84TgE1KxCgQ26HanIKX6Uh+crZoqpEkxC019YJXBZaHFRK5Q/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6H3qrdS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6H3qrdS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF279C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 12:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720356982;
	bh=J6O6FTi6g2BiVN+rDZc7gqpZpbaLBEJfXyo9AcKnG/M=;
	h=To:Subject:From:Date:From;
	b=u6H3qrdSQb6Tnnx/T8k3ka2X2d0zNmCmT6oFJpj/K57h+eU3IMEMBwghDOuU4NcYW
	 mr17ygUhp4zQvtrnqnr8BLE75mf/eJZL3htRe1XNdqsdp4EJk+khhUco43EhbNIzsI
	 /vXSZJ4jaDZsI8fYkhuKFMV77JB4JR2MG8Ios/ZRppiNNw8HzuqKQIXC6HJKd4i01X
	 uaLbNcMvKGjXOaW8Ei+PFt6m16r7UXxGWAHOseGavaK1J5i5q/TRMGIR9qgRb+zHm4
	 9qEPRWKr7tcLg/VJUdInVX1deIIHCAkXvzUDjk0s7h/kwgWNMqfJjQCxby+SUQbhYR
	 ZmcednbPRW0dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4DAC38150
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 12:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172035698276.24155.10311404679630327266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13bd6c9c235cb431808905790ff686a67eb25a83417b85899b46ee650122b4c4
Date: Sun, 07 Jul 2024 12:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720356982
