Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6867E5660
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 09:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD1E1C433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 09:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687513988;
	bh=t4EzU9jUyq6qwh1eoPHxdqpP7fq1A/f54uvpeCV2KMo=;
	h=To:Subject:From:Date:From;
	b=eT1ORSFqHY5Af2+6CzPHLglQTnE1hCvaKL8bl3I2h6HedriMuZoNuPsxkQlH6DhN1
	 prcDXgjPZ+n44cLZhyY8K+y8IUzd2Y3tjlb+ppIl7JnEwbOZb0mliJFREHqvDyicua
	 6euxBMkvnePhhiPLeYqCNQ+aUEiLwXVbfowUbY1oS4e6E+IYB2mw1+hy98AzaFVDX8
	 1Dm6yD7I7mGLZHUyXioE49XljiDVNDXz/JjmSWAQdktKZ5NfU+SIn4lOfjsKP85+rP
	 O9nPeyXiO+qlO8PR8l5DLHkNxGsm3P1x1V3Umzl6sjbzo7Hf1n4E6EwIum8aM57JFH
	 PXv1H5a+OzEhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A460DEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 09:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168751398866.19469.2024586253399672952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b4c97368527ae3fcfd531d8c1ae701d19d2d6ef70aedee7e626d4cf208c79f
Date: Fri, 23 Jun 2023 09:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687513988
