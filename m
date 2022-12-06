Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B20962F22
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 23:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E69BC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 23:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670368254;
	bh=U33sMRkH5h+b3WX+M/z6aBJN6skmpsYXEcCCZWGRj3k=;
	h=To:Subject:From:Date:From;
	b=I3uX5F3xV/ZrbMOMiECcnsaY84oD9yEf6kIIsHs4tddfFpSo1+L9pNTnRdAvPwNml
	 HbWOk0dJ3nyC+X1nIFkcN0RZIWLmy8pajn+yBtshQsIM8Mty9QaTsE/HwlARtdItz3
	 K+Us5RHX5jW7eJGg5yOZdR5YlUYEAbIYL6XfOjdZ69BXjl/WVbFgXKmuM3e+ekGJ1C
	 4wlJiGYwrzwOmqEVsv5dG+BAldFeooIom2PzTRhE12SwWkH3FijzWk7hn8Ey16dNYh
	 B4hiW8gP7fyTE/6ZJpi7NO6DZxkg7K8HjUurS3nvtu+UbaYHcmsz87Cj7LYVzmsmka
	 P8yCdPrJtzggg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FA7AC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 23:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167036825431.15003.6942450375212703536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb8efcc14a905a82ab004aaabed98747014db3751eb5da7322cafc7971825253
Date: Tue, 06 Dec 2022 23:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670368254
