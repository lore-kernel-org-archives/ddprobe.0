Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0A0615CA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 05:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D729FC433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 05:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688795228;
	bh=hwAQDBcox6u+TeU2EagufiWnH2eauosjYJb+3lSdios=;
	h=To:Subject:From:Date:From;
	b=sB+5EwjzeIThATC6z0ZyPW1zSA7cWM6vCefns2SX5++Fg2zUk80J9h0ErAe8GMjSG
	 gTuOrojcCjvz3A6ZIZETViVORIVJvvqcN7jkVoVHCyz9G/kXX0pUesLb/3mFE9vUWa
	 XK0E03DFZxGhTdOsxJqyh5xkLRqnueEj62dQwHN9a4Zm2IAJVKP9jXT/esHT+7Vt/2
	 BJBr5oESO5f13181QNLDDe8g5wAnwACBWK8sLj1dYfkpX0BrF2f4oRgt7licIZmkMq
	 hGQeVZPLMuOjzXs8lkvra8ZbKYbtC+S7OlhtMsX9vXTSSDd8OEfszUwsRHLZ+aM9NY
	 wKIZsK1l0LDOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA996EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 05:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168879522873.23176.7686566175499146293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b1e6ddd703814ac0b7ab91eb4de408674474257255d84837cc7d0e3c7a5024e
Date: Sat, 08 Jul 2023 05:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688795228
