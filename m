Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E76C85937
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 11:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716550403; cv=none; b=WVGKGd7g5Le8fAWJyThd823DhDgvGfJ8EpHJc89V+0s5o/5qQU29Vat85INNYIKYhEEjXCbdlnL3tMmY5tS6euDjOxKdYlqdMjGN3Zj8C1sxdEgzdVppxfYEczo0RXJc9H31a0XNuOCA6fSuma2KT1a7c42xRJlEZOym8Wp/daA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716550403; c=relaxed/simple;
	bh=VnQXLfIW0pCujBbcH6B1+6ii3knw4HqoZpki+zvHw34=;
	h=To:Subject:From:Message-Id:Date; b=YV2U6YDTVWUH9Al8czZgDZLrW34OJKZbyUkYXIGLgjvAC4yUcio6+pwTeA7AvgGDWaHJU3UaZuItjfsb2TlcSNVXQ6nqfCnHp99QyEgqBSdiQ1OGDoKji61L9nuAepKbhnBxpfIY5IPe6nG6kodVEos5EKu604yEOhOvFISPG/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oL7TIphY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oL7TIphY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F176C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 11:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716550403;
	bh=VnQXLfIW0pCujBbcH6B1+6ii3knw4HqoZpki+zvHw34=;
	h=To:Subject:From:Date:From;
	b=oL7TIphYdukYFn3g7TafioOg2WYRE0TUmIZd1d8YEHgbiETR4lDL5QNl0JMGYKz82
	 vTf3eSr7MFcHYHUSFDY5rtMjK47tB23WSd1d1ID+rLQGOghjcJVrUviJSonZBPEnIf
	 q7o0vwrqpMMa1GweBvo1cWlnme6lagS2JqNkbL07qj2Vkla3tUhp+EQ6fEAjMPM0iy
	 U+7B3AZbdYQkIJZub306P4Q7Tv9htBZVDba5U+wRjNkruhP+0jizwfkwjHnONIGqIT
	 asr/Gy2PdP27HEtOx6x1lwOqSifyp/cpnHWZ06MACYv5yHhGVbr/EKuPD3nXL6oB/B
	 0ZKjTUGj9DeXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D876BC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 11:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171655040286.21910.16263875145964148875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d8bc4404bc5837788384649ba6ce5422545d7ef9434f27131e4165f571ee414
Date: Fri, 24 May 2024 11:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716550402
