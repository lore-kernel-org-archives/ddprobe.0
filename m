Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B7EEB30
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8335BC433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669464054;
	bh=Mss12D48AJUwyxfsqBrQZtvCyi5XYrQAkC15jAVT3sg=;
	h=To:Subject:From:Date:From;
	b=V63kyyZWEEAqc2WSIDXvTlILufuzqMJBYFUbZO/+2ASMhCGWTknTGMGE97rfqyvcD
	 o8bDgx0GsC8MxqBxxutAxUcO6TjB3tWw7PNa8h/HGNDVWKuiqI0pdjbMGUGuEUM7pt
	 7yZe32XU2siRdFhrAK8NLTR3t5qEU6KqMwNcHEEh83HuVXZYOHIwZt8zuQ7lwcIvw4
	 7xU78EFKU+59pZo5TuRXI28nMd1XICQcfrsR5Y8iT7S6NBxCkIq6Hk1TMeES0H1Zxj
	 PD7KexptxcOMJD/etOmNXSu9/Y17ql738Bxq6f9Sxm0Kk75gnRGDFBp2IBrvmlWTMH
	 poMeIeZXAj/Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B60C43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166946405436.24809.3085817415074011879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c648bdc564e9138a36e469d8a93cd1b7c7f17b625412a388475e7e11170b05b
Date: Sat, 26 Nov 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669464054
