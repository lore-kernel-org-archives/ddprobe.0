Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B166712
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B9EC433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663351253;
	bh=b8s3x+UK3W+elEn7LQtcEfIGnQdUDMsiHjnPDtrp+tY=;
	h=To:Subject:From:Date:From;
	b=jq6WbOXQ+CJ7t6EIhPfeE+S0HmQ7J7x9XR7qPScoMd8GbO7MHgL8v1/XVSxSOJvCg
	 6gTuvrc2eufHdDwgep0/7010gxVD8b4dEV1YrsWMkIZWbd5oBKWu14ELoYzKyygzvz
	 rCc1YcYLWnMYkyHIeW7APfpjxQuDhDyQHJtbWFUZrb2pU6OU9qhu2eN3zpiKcw9bS/
	 rvJLd/lfj4naoztjAPqynpce4TfAaPMyS654yLt0QcS8S9DY/bu8w3jXanrSPD50mO
	 O0Bxi7OJAvJ6+eIqPpPKdyJU9Or6VTU1iCl9mn4P+LeJ02i5KQQqgcME/fAenUfK2v
	 7RdsyMHdGFANA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54761ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166335125333.10967.12466527177348361312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0754ded7a532126af6a7bf83b849cc9febb42e48a2b9c3d801890c8d6120993
Date: Fri, 16 Sep 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663351253
