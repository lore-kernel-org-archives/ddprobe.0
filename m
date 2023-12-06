Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E95101C4
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6YvH7sa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7B1C433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701841696;
	bh=NNPAhKs9QZsgvgh7z/kNLUm3RUbb8Dfk3tCu9Oviios=;
	h=To:Subject:From:Date:From;
	b=i6YvH7sam4514D3Y8Gx6hWA9UewElcUMX6fY0AHTZV7hd5X7lQX4LWp2YkUZYazvd
	 F4ZyvSf1eAH+YCz58jgYtN/WSVfxhJwvnrLjsvGpnOEJe8XM1tnvcI8L94makhq7Ee
	 UY1JwYF8ofEtokWWAtfCdI1ThIcjC+t39OOsb+/29Sk9mdE+KKUEorDl0GI76DgsCm
	 UwX2pmz8mxISyW86jFIH3pEa8IeXXQ+4PQ9v9OzJqzvI2dPSafgWEl5Ea7woadX574
	 7pAP5WsCk7ek+km/JsyXtJePjNKfPOd0BHgTFiZCPl9j7PM5+cP4kp/+QYmECopp9I
	 1/hMgZsVe6zpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF90C4167B
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170184169637.18983.5151239683849572496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce7af17718f697c27b2664c26944a58c30a4bc8d44da10c50787dad789792cd5
Date: Wed, 06 Dec 2023 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701841696
