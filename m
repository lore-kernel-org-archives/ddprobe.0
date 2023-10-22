Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F562A2C
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTlgNz5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9257DC433C7
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697945296;
	bh=Q8gq7WdgB8t+j0ILU3baTPVvR3MEOKWdXfZqkmrnYIQ=;
	h=To:Subject:From:Date:From;
	b=VTlgNz5KK4R2Y4WNIyoV/rOUry1RytPRqyiWCPz98ra9UZfi30n1lOqQ4btvMgz3M
	 xMdoTTbMCFhu0Z3B7L+SdRVEj+g0b1k0JibXel9tmAoR6OAkQHVd2Vo/+khVAbJPdV
	 hnru8nVd6wTHaLQD2/kB+3O6J9z8FwjbtiXuIJWIlvdFyelo29MD6vs9J7kBEcuy0Q
	 Rzlk1EWcEN9+Y9WZNCy9Svr8XPzvTmVtJ2fLfFAggsX8+j9Ax50uTKeL4OSTnth5Qi
	 gBbYQOEV7QJCtOtfMRifYVO7+Xi52xWaf/9J7tyAe4IMpSMz/YlsMRut+KS4+f6cbL
	 1LmmZg8VVfNKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74D1CC001DF
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169794529646.31351.16546772963199418854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bfa7f7b699b0bb03223402b0bb8f681da530dc70c299d2e95e9b0209d78d85f
Date: Sun, 22 Oct 2023 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697945296
