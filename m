Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFCF21255B
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755846594; cv=none; b=b6AS9j0N2YjJJdygkrWSR7MaytouZEnbTd0t3qHIYQCkO3neT1eH/rFVoxTrlBdaNeVr/FBj5ynLOtp0ufSxhGFHGeME1RXah2XxwQXmaXfLei5lBcUjrNIZ/Q4ckiTcON4iGtRcGdFOMUbMLNKU9Ab+eAShtuoj2rBVAK1S5t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755846594; c=relaxed/simple;
	bh=6h4grCdx6mK+B8+ci8JIhbI1uPBPa6DaOXFyL4rH6kk=;
	h=To:Subject:From:Message-Id:Date; b=BTztaqU/c8aJnmLODBsS1vZx11iXVt8LMhlTXUy1Ta/yO9NZXX7q5QkC/jUJ7TzK5kM21vFkuaQsYqf9TinesF0kr3rWlf10nyCcVGY3T++r/02alv0aweXav7QePkDBNlJNS316G3lxOCOfavnhYAp7J7pb/cd5Ad9qVwaMT5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWEwzD8k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWEwzD8k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E925C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755846593;
	bh=6h4grCdx6mK+B8+ci8JIhbI1uPBPa6DaOXFyL4rH6kk=;
	h=To:Subject:From:Date:From;
	b=ZWEwzD8k0SiQ18OpDH7R+U6Z7bZMiLX61ef7mqxQjKJYAsDtz/FZFo4X600CtYoty
	 +fSts4xgaenvovLiS0j5Tf86Hmng/7amgV9xvDel0qOcK2ph0vqWnagU7sx6QFUL8u
	 Dy4wNT7g6RoimCnD4zfCQW9ZyVgrDhk3XeaVP3W1Jrdp0oNuMgA2AS9Nb2RjTMBMT5
	 +N1fI3wZr/HwInkoHEsHQYMQ7m+h1Eh+uxcupu8MsKkvP7Zbm16PqhfPyI45B0+eOg
	 UfxC8M5Fo5agAEB0lMFea1Tdpxk9jrlgRHYLmzUhjOwwStx5PXRdPKjgJHksvgQxkV
	 2MrXCN6VDtq3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC41CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175584659358.32218.11528632974097521213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 652204509e2317faca70918f9864031b4df3fa623164ee0081b928e175c36e89
Date: Fri, 22 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755846593
