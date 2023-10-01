Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AB72138D
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 06:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3787C433C8
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 06:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696141568;
	bh=TJ1/rM8f/Jyyxn47OZMb4IePG1tmXbm7TlhKD1RhsBw=;
	h=To:Subject:From:Date:From;
	b=G5yvDh5EZJIOTz9kmUZ8va4dcY2jhGE+9LEUY3yP8yVWKiX59wwqdUWRRbYiqGwHL
	 eeimS+LmE9ynNfAxLbgrB4rEBiYagBg6DTF09t8y/cu8cZENeRb+LhVTXku+2CqxAd
	 4UdyIdtsQb9mboow+9uMRqdU/GFH1QOGjx5EJnVOyTQPjzllNuA7wkJBJO1G3Q9Fy4
	 vlx7FNwlG9UxBLpGn7BAPPjNhKiNEYtOPOkXzyL5R5A3ywAW5pQM38xX0lOlS1KUOc
	 /Cm632Gi1QuYSP+6ifwL/QKr5k2vNZC0jKYcUf8jMd76r/HtaMobI5qjSYu8sWEoaj
	 plWh/iUNj4NKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16E3E748ED
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 06:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169614156871.11393.16298778974847507497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f420f30fee82d0b40e4eb7e0e6dc428a4e66441e8f02cce62970196cd52778
Date: Sun, 01 Oct 2023 06:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696141568
