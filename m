Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84FA2574D
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqgvPH5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A174C433C7
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700666896;
	bh=xEmggz9+NPQdE5gvC/GtiB12Wb/ihNt9iy6D/J6dCnU=;
	h=To:Subject:From:Date:From;
	b=EqgvPH5DiJLEPwCnPdlcJQGQa9EdXpUdIMeH8NesRthASXRrrny++0zqcRlZoQtRM
	 Bgz09+yDBtQr/VNWvpaZv1oBjN58vzkD9YKG+ysFHxrgHT7ZkBvxNoEMkv0bgffoQ/
	 1t4rvoDRlxjvDEQtpb56r6HF6LqIxiivHhBn4VieJ6kc13Mpj5r9O1PQJmpZd8psmO
	 ARZLvYW3dXhd3vnffhNwgs51Yzoql3zmgn7qs6Sbq0BQpWbBMcgCKpHU9yHR9KAXt2
	 9QoNopHIQdaRYVjX97YdshaFp5aKY12ANjs8RY55apRcrVgkFRihYMc524VF0Z8zZG
	 6NWpg6vgvsP9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63293C61D97
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170066689639.30903.5124213734733172937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aba7b29d59ee672f27d30f42e1505253a740be243b1246995e9929d1ede7840
Date: Wed, 22 Nov 2023 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700666896
