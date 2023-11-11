Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B21E13AF9
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfFgkihd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77AB2C433C7
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699735696;
	bh=Nf6/MO8tbAQ1E2LPr5VvyI74H2BRjI7KsgxEZGKs5BE=;
	h=To:Subject:From:Date:From;
	b=nfFgkihd5HCRmn9UQrEzSedj9LDAkV4LEDLDjNecnCY4HVoXtanHKl4QXKzGBHyVZ
	 izePCjr9kQ9DA89jxbgsTohW2rW3F43lmv6jDwOqIAH0Duy2W94MMSwgRtvDhAu4Nn
	 jaCJeztLJoEkzpVZwHZO5JrUo4f8ohO05R9HOJpwck3qfk9soIwQucSAJUEAZ9M3yD
	 vOWtYUa9SBD9VOZZj8Lnc7+1B1svUkUsmzE0vDmaLyq9EBVUM5PswDJrsjXwmnTqCl
	 MWCgx462nr4rvMzPEaRkxohHnJOCX1mNH4pVFa2/wAifOZ911gJQwyGZR+C6Z5fNOk
	 vBdkIfx1b7lSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D69EC4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169973569637.26342.10224346026377081149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea2b2f9d18a1e4f6df807b9be22bd12389ac0b30c7de480ab85c763b60ecbef5
Date: Sat, 11 Nov 2023 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699735696
