Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B1B636
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 02:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7BFC433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 02:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677549965;
	bh=h4qvg14tZ+mFqDUijtC2zasgaWNWl2cLj6sFMsPocx8=;
	h=To:Subject:From:Date:From;
	b=R1C/lZOn5P1+oIAuXeYSZTim4hVcfBj0xi9AQfMlKdcJOg8bUdjH9ZgtGfIDXGyfM
	 QiePL1vRojBM3S4l2nXz/EF1jQd3aoQCNzLxULOGzZ9j1XLeK71MUUGaZ5aDEsUPEw
	 vrU3DyoNw7ERC4XP71an0ptZ/NINnBg4R99zoPegPSxochAp3rYaQ7aSqWLlyDks+d
	 Q1KMp/F663jOiAXc/tc9zSDU/VbQc9t65xleYaec0aMRnXB4PC6RerRP3Oikbh2Wue
	 juBVoWg0oq1bteq6TH8ZyqYUxX05U8b5x3QIULuPQKVqQhgw+gt8Oz7ltMTdzps9Kd
	 ZNWm70dJQ1GMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19BCC64ED6
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 02:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167754996572.5079.12345502898050824944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb39c6953d9a5e951e7fc78f9f260c606febc6c1d3b1d276d8655168748812f
Date: Tue, 28 Feb 2023 02:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677549965
