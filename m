Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1158323B
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F18EC433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670971287;
	bh=REAxQ37BZA+W206bxFD37db+y3XLIgTx/qJxM56FRts=;
	h=To:Subject:From:Date:From;
	b=LSiGSo/vZK9e3Sa7qkD2xn2Ki1PXxwIaJXFo0gx5ztYWkHA8v3UT/7wF9HYZ+oYCv
	 gaw27cyvNbyqq4oKX6TV5IvwbzRoFyoytUdstpeVarjp2AqT0EFNQXU/DS20ghvwf/
	 74W6CwGAqquE8v8wDwtZT4/mgjUmyza/oQfYmVlMeHyU90EdnFq2Acf6HeeCdMlJR3
	 p1BlrszC7exZHcm4OmICsPV7Lxqs/fgADHR3+NYZIE3DAsXm3VqDd3dNRkQ3t8Wse0
	 2XuqOrwrPAO/+H7Jcfx/dWhH3AM3v0+z4bwD4Sk+IF38WWPJ3ixYT/Jpkme5N/BYn2
	 ehXoGTiBuKJRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66DF0C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167097128741.8559.13406583071099451919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36fc1d2876292ea649ea6c5511b67547bbc1fdb135cf42799c723146821c87ff
Date: Tue, 13 Dec 2022 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670971287
