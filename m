Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C50290DBB
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757269794; cv=none; b=fuC1KOHrfAIoU/g9qDSecwxjnu3vDI0p1cxJEx9qaGUg1UvlEca5zGirwK5EtrDsb0sYXgDpRgON3a/leClD2Sq0GwWtH/Ewryp7mRvJLP1Rc60rPYDlMCYXpJOlEfqRaYRfMHLN6KVjHCxfeAC7xF0F7oY9xV1KXZZ1oH3ED4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757269794; c=relaxed/simple;
	bh=xegx3yl3pZpDZbk2wAG2oOL910YwXVEZ9WrWbbKeGTY=;
	h=To:Subject:From:Message-Id:Date; b=AZk6gGQlTAUiYS+/c3SlxKtsxpjQ+T/okMexBNWoIwNIRNclakaji/xWvb4HbLU+f8VfFApuX9Td+jxoKhqrtDPZ+z7kRiQwJqbx+8SRATM3mpP38eLPMyG76/io58Q9mPpiAGlpfUf/48LrU3BQymCELMEq6mfzF0flVicWKaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHQfWwNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHQfWwNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4556C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757269793;
	bh=xegx3yl3pZpDZbk2wAG2oOL910YwXVEZ9WrWbbKeGTY=;
	h=To:Subject:From:Date:From;
	b=BHQfWwNlNltAUgJqjnvh0T6+4YR8j+5EfGKJ+dpf/d5+ASO7SQcQ8+ejkq5JzJD9A
	 NU4hdLcIC1VQBObW0dCIEGX4nYubKa88lROfsK3dyiYdvQ4FcMdqCW5eDWLUxcrujm
	 BZkUzYSRZTtyzFTHrZoDM30xagrSEc1C9dSpTdfyj5YbxAI5UMZ4nsNzCIk05XJjKH
	 6M7ynbXFqrKN4VggnJncTYDI57pYyGcNgZv+xUYP1GYrEOm2HtNZma2nyp/Y6j/lyk
	 G0e8z53lLuC87ZmM4LNAm3ZoOyOcV0T/5DZliFrfaiXUHNy2x97MC2k1TdYl3rcnRS
	 GklenGIFvo3Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EF0CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175726979357.15272.11213188091335412495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6091366d26a8f25b9c286e57642ffc56b7b2aceecaae156439fe746a702307f2
Date: Sun, 07 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757269793
