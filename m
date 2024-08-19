Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1CC12B8B
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724028954; cv=none; b=VyEOC12UTAwlKJ5lMnmJsQ0tgbdDgECD1PAsHmC8ac9UUa5ocRurOzwNt8nGm7LxhHXgAu3gM7RnP/BHUVIZTcky2uTwvyoKzCLNSguAI7YE8N+wMruFtUeBfQx9IGYimoRC0HzaK94Qg5LoJNr8ZzX8UUeyxWEl7F9cq8BXZ28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724028954; c=relaxed/simple;
	bh=1h+1jMWOKe3b6sNy6GBCMLwc+dLl6F1+ad0o7q1N9Ng=;
	h=To:Subject:From:Message-Id:Date; b=NXZ/gohP6mbvnyBQWoVJpA+se7kzsBuSC/4B0DSwilyXONSiiAOkamhwnOtgnjR8Nu+FKB5lY8xWzazU3QD7xHhXS7IfreTcmrrkannZYKbQVRi2xkSnzLtIEomlwEaCCiwbWc9y+HQ9BzG6/l1E20QnKOSz2Ocu9yDTOSuDLBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6Vxr9oL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6Vxr9oL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE29CC32786
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724028953;
	bh=1h+1jMWOKe3b6sNy6GBCMLwc+dLl6F1+ad0o7q1N9Ng=;
	h=To:Subject:From:Date:From;
	b=A6Vxr9oLNbr4JF3xAnT4+hylzD9cxNscUpZ+d59fnKPJhUTo9IC4ukR/XDsJ3Xf2f
	 JKaIOKVde1pTHOXf9qbr2CQF69zfMIiy0mpBbLlGBpdoSsShqsH44Cza3XmGRW0XOY
	 Ilnu7m44aNruXv8SoMj3fnYbu7DzbSzNUZE0nJaVKUsWoBBRBAmDbG8XNuLwrEl8Ge
	 S1Rv+GDTJ3x1M7n8iRhxM4KApuZTW0whBNslUGdkCZnx1Ola94hhG/LEdUFewlpxaU
	 60bi74Y00xX6ozHus5Ale//J7KFIUHWVNQ9+Opursa7LX4SiBKR1PLAqmxSFEuLG9f
	 n1MMlJkB7nD+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98442C52D7C
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172402895358.16992.2003591517436005853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18ce606588e7c66ef2b6a10451296686c0ec57d17ebb8a800660e47856c9049b
Date: Mon, 19 Aug 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724028953
