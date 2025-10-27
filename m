Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424FD42AA1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761561594; cv=none; b=uIaBlYuPpuhMH5So+LOIKb3m1swIOrQEEd70Q+J/d+2nXv8ZSoZv8G+3Rz9ujqlICGS6RIj9XdmJBcm7EmIg8QZyknmT6jatJQrky/2kk+ocv8Io1EdzSQHV7g0vlUc3rgPLKgYYHaxfccUQ2Zp6wY+3KQnVntk7q8F07L76mG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761561594; c=relaxed/simple;
	bh=1wbKwNiBPRz6ayiJdLCEHJBe6x+Blzf1P/nwkMgP+CQ=;
	h=To:Subject:From:Message-Id:Date; b=L2m1tho/P+Ef4/Iuw5D3skRh4UQTY3PqPNQ2xjon37nGllO7DvG6I588v9QeByjBUCYhBc63gCXZ/Vr+Qk9nbM/hTBH2b8YqXGcUI7bYVTWaD//mjMkhF6z5ZVClOM32P5c5jZrKiHKn/lX9HkD78QIV3MsOFEQJMNxPPIt6Ou0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0fOmmf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0fOmmf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4C1C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761561593;
	bh=1wbKwNiBPRz6ayiJdLCEHJBe6x+Blzf1P/nwkMgP+CQ=;
	h=To:Subject:From:Date:From;
	b=s0fOmmf22JUEdoPvcPXToo7KbikQMB61Sjt9iOYEEwE2jvEq/wVKz8/Oy+NjqI5Ti
	 blbhwKmKg3odbFn0KR6aYISTqpHsIrqpDhk48/bW69OTxgjpU1Q7b3HFHUxE/iIY37
	 k12cCJVJ3VEcT0LeYd/ffSZdIBsigfoUm1Ag7Jqij9JbzBeY8qK3+VeM9Taz2kwQ+P
	 Cx6sL9D1kEM1MzyrR2RvOXwXBdLAZaWf00u6BOHKUhZmp9JvfRey50q4YW4KJwTeAu
	 SXrx7MfZDSsNIKkT0v6rVg8eql5MyS0vCqzQZ440o7RLN/EsJeIqPeslc73VXPeEbW
	 oL31zzwWVZyNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D96CCF9F0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176156159358.24103.17384927997652499789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 169410ef84a63b809ca9a530df326dc84b6bbb4168d789c24179269df8a1f831
Date: Mon, 27 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761561593
