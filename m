Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57E65A66
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CA80C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664554853;
	bh=L3TGi/BQrGfC4dEBVCvtNxivZiMumzIoWyYtecprCvw=;
	h=To:Subject:From:Date:From;
	b=KWQdrBbYQykGp1vdKon/dnNCU+HHfo7WR3zfLUES4MPhUBOrHoL2UIdS3HQVF9UEl
	 6cL/py3I0PPWcMF+W0H1WGBvApPU+ED9qV4e6Zh2T/TXzn1REd2WZ7rlavZhGd1aWJ
	 ANjL4ZgyTnAvap9WujUbGcX1x3lZa9aoI7KZBkJgP/TW1+HbLNNOl15lA6P5IoClO9
	 gu9duenKwwcK4Omx0lhKyxQTid89W5sxuL5eV+17En2FjwzMaJtloS8DBuEVI905Jl
	 TT9ZXnpXGRqUtduTs71rJLEcmABNZzTIJ5Ot9TgVf9+pDKICYJcroejs8gX7LYym1t
	 akcr9/w2/Bjjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 714A7C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166455485345.14450.1900166306332774431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f25ecdac1c1936fd8686e9ba15736c2df44f8cae305a2dd4f6bb6b6ffa9b1d88
Date: Fri, 30 Sep 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664554853
