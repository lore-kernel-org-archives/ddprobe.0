Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99BF7F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 03:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF1FC433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 03:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689909728;
	bh=/ZM757IabyY7UwcPW4ojz2lzB4gdcJqOGj5D6Q6EKXk=;
	h=To:Subject:From:Date:From;
	b=murcpTpl4S4Uclr8SqAkiG//72vzkol7xAtDjGDtLwiGNp60Q3sq1F2/VdoZggqSV
	 U2OKVSTC4FjXXYMfdNUfW4voJtYltWmSxEPdYHucgUC2f1or+TV7BIfcc9hRdv5u6b
	 Qu2fB9mkvkSGUnE7mg49jk+Im+EbgMTYu3t29AGypJmRmYcsFMnXIpRXD3e+f/Hcmi
	 PzuF4Vv+V3wiQY61Ko3gnPsyXRKJRy58LQlH8LAOpJbnMQdfXgDnj76ofCgap+Cuq2
	 5DwiL5kCoe7EqU5j5LIEYX8mqDBJPd2CIwYwa12Y+VC/dUtoRGtWgFOREddmI2yJc/
	 Daq4vwe8rkL+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D37EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 03:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168990972866.2476.16163994190648198611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41cb878520953f04c9a8c59db95d9229a552e0b826ba2a3da00059070d4a2da7
Date: Fri, 21 Jul 2023 03:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689909728
