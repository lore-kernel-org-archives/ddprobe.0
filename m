Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC86F2579
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 791CFC433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670923887;
	bh=L9Rp3b2dKVT2W55P9qs2m3n1ScrC9MzXfSvkGOLOnuc=;
	h=To:Subject:From:Date:From;
	b=p0y0KjcheetRCjvIH/nlz/ZZnvZzZSjyKHYW6ZNpvUyjYxgM/PTr9kN2luA24580g
	 K7W/5b7gfdbi7njhShdXziGs7ydtHi145aM0ARveRyOmQfkPrz8+bPiNYcNMYaTmfo
	 sHIyq2cWanGbzwZnh6bVRv//oRNJ+C/6zJ+SX/l5wCdc3DIdwFmP/2E9OeOyQw0oQE
	 aPe9YqB272+1yxI2YkWkIc3VDs53zMwgnOF4doJYd75RBDQ7Zgs2pwPKHMvgwWhoHa
	 jpHO4MkxXsPcBWItLfDvOpDB9Fc2qpMzbkHshjyQgLvoSebenATkoM+VTTfEsTw+yD
	 l1MGp6fmRKS3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D584C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167092388737.17121.16915057977953259880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aad7921285ec920d2f9d0e528da5bca803967ee2a22527e26d3a60f28e95dbf3
Date: Tue, 13 Dec 2022 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670923887
