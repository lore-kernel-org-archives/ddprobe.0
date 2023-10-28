Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20108171A6
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hihuXnRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B2C9C433C7
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698514096;
	bh=SV/svt7e2TNaqtsaCxajDJJMDcgzBCUycJYyDmwfsrI=;
	h=To:Subject:From:Date:From;
	b=hihuXnRbiBIAa0pcVS26n98fydsnlexdMGKL3pkH7KMnvwF00XHmxcJVTFrY1C+0m
	 QA37gbNQNoQejsHPlgWMfaSDIi4gNTDstIvgbZ4Hyco9oCcZ2JV5D0I6hi354w07I4
	 57Vaho8xtAzxldSSiPi6cqdxW7EDRnJGsFXjdLUFuPtW3R3Ur3Cz733wFjbyNxdWg5
	 1aXOEexP59l6D4j8X79uojqshzw/8SlfXHREMPXwGOlS+gILDlOtBKLjorf8KwD/px
	 9WTgouOJsVJjGg0lIRo6gIwbaEfi5xKLNfAShXie0Pj/Sup7KlnAd5bKz/2qFZEGBt
	 g5JihL0/5L5rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 771E7C0032E
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169851409644.28744.12342129284411184354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf2fec864000f6118f02048da1eeb60fa0c1e5c304d811733f8279b2f9c9733
Date: Sat, 28 Oct 2023 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698514096
