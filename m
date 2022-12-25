Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6D27B
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82606C433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672012287;
	bh=BaQaLRCg49dUEjZKk/A9xY5N7LDQJ4+Tu9smGA+UTbo=;
	h=To:Subject:From:Date:From;
	b=KEGfXpGZ0QwUwrYI/56E7LQiPWcxkPYLoN6EIlmoHKQ6tR1hQEoq2BWYhO6HYOgYA
	 1NsuueKiLa5BmFP+tuvQUGSt0ml8YWIvf31G/QFBA3E3uwNOCFigi2/O8Aihgl+a3k
	 jup18rFcEsaYBbVymKDh6+biJOJvqWJox6gQQkHyScmG4nLqTlWAfLDP+qTqeHBnUH
	 I1jIDfzhBvWiC7LHmTswHQDslqgUyG3ZGrcSEUo0cRj8raC2WOXCrGCLCIZpt573/0
	 Dy6IV8EGeMqbQCVfjjQ0OcSXZQ+qt7VqnLCtKefI7WFQ9r/pw3QnfLIG0A1Pti/U2C
	 f2HGNcf8DWBsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B7ABC4167B
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167201228740.15007.13681332668135203206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fd680ac014aeadcf8f78fd8c66d5a69dd2a26f243e66a0ea0d958f1fbee8ee2
Date: Sun, 25 Dec 2022 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672012287
