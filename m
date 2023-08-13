Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB2323C8
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 20:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE7DC433C7
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 20:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691959988;
	bh=5AG7Z7fAwWJYYpkGDB56dgk7s4qooqeR2mdqGzrVKCc=;
	h=To:Subject:From:Date:From;
	b=B3BSlSid34Uf7xLokwanvDWvQg51TeXfW1TttDT6mI/Rx4TW6jdJJNzbvenRGzSgG
	 4wfEXRFEw00TKOOtEHHie8ZGT86tTjbvb7DgSrOacJoO1GU7vS31FZoPKxttbP/jHf
	 5e3BPUCv6oRn2b1syWmyYYNOazC1HJlbtY0NLok+g7AgBqsAsobd7b8jEyZQeRXC6n
	 /mah4JudiOkFCEwY5MV8ak2wW57RDvW5/kn0HDj0G8eRPv0oEvGRpMXVhwJoBFfWvK
	 Bvg/Se4kf7gB9gPgYlsZUb5VvFQFObDUGOXTrRszpK4Iml52lh8nIc11WVIWfs+Luh
	 I+UjSq76fA35w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3BFEB64DD
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 20:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169195998868.23025.14631773501978857313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def1b5bbf2c1f5f684cc3607fab591c7e228613e34528f5c56d98eaeca7a3ac6
Date: Sun, 13 Aug 2023 20:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691959988
