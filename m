Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024B310F6
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F1F0C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670665887;
	bh=OfirFC0YOoqWp7zXlQJ3v5gNHw31hQMiBsV/ltQzMeY=;
	h=To:Subject:From:Date:From;
	b=hCFmLgLeT7MPF8n0vbwaldp9tjtpLQyFERAyn6npWoaWabtFBijwV0CtwxEiYRfIl
	 wNcUoYYV/kBio8rkcJAPMfoAMdu04qkfE1NAimWZjWKV/5fPDwa5m3aRHkCvAbVjdD
	 noBwjrUk1hGy18Rcc7oY2scdQYFgCwvTEoJhpW+uVbTWDjt1vWt0xym0aUZToNyqhb
	 SOLUakvpbelSmrRQ9y8VjCifbrgtUvMknC2gdrfbwB8f0SHb72XHGYClrNE8jw+oNF
	 fMUZtG/rWA1AwUlavmT349OKaWhnwTyROoQk8NoqJZEtTB/9EYndih/TXsNp6/WfSb
	 dXYPDugTD3B8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FC38C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167066588743.25109.11746369140917690720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 558dc3e560546064e49680ebbc6f70df0503cc2dba4c0c1b3663b75f3e3f7f89
Date: Sat, 10 Dec 2022 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670665887
