Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FB761851
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 16:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01BEC433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 16:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688834228;
	bh=q6id4coecFj+9Ji0O0HQP3kgFyfQNsFy9cWiZA/uQQU=;
	h=To:Subject:From:Date:From;
	b=MAJLeVvBY+8mLaRdKonJPUTIz3WF8uzYcPH9it4NK7anCkJYbJNSvyKSSUkGoTjJZ
	 cmb8s3Tmka94N0ofkyaSX5xkZg2Wb7u6iA6I4qJeAXSYQHVuVZn6v1/dkOqvsBidTS
	 yJcsxhoGjM1hO+1tmyYEzsIxuuBIopj9BIdfXhgxyyirnCbjO5igrKCsgHiaaOMa3c
	 +hnxlIpYc1ArqVRuOmHu+yDKP/IcAFpfZXU7OLehhzChoyBPlO3yu3HH0KfO5PDvLj
	 T5RWvDVvzFiKfVrdPAm5EPaigwscaKe/gP0R2rFjHrFW3cl4sx7zbJ32Lr5DmEejj8
	 aPRZWH0SVRbDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A72EEEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 16:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168883422867.2146.11861009451499600388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d64c3fd4a68c877a0b4cdc7c1df7396f11d06ca933ac3f62d549610514f25b39
Date: Sat, 08 Jul 2023 16:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688834228
