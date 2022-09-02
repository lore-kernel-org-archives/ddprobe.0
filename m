Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7E9B186F
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D6BDC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662133853;
	bh=oXJSu+ZiByw//Kc3dWaVEHH8gVVBWnzz3VzjC+HHBY4=;
	h=To:Subject:From:Date:From;
	b=Q9zLpH4uGoQ51gGSKP31wQlpE2pVEyjRzyJD/k15Ai/iaouxG4rCWbBWlE2y5fqQs
	 1Tc2F8MdwSEKZriZPAGffwaY4lwJ9gbTh5vcC3xS5ewYZdUl9VlRapKZlEjznuc5dM
	 07GhbT4BKYvFJrVVV4sJcg1t3guQFPEEvfYIY8VcZZsjLXTcWOS8Nf/Nvf7k4tYEDH
	 03dDGm4H77tSLhbhXVyueyT2ZawSjwMpHtaM6FSZk3HtecjzHcJZnJtNtJFxrqzIf5
	 rSYlY7TYv33+MAahPwxRj4e7/wAlD9rqGfgc47Bf7V9dJPw51/b9stzI41RyZKVims
	 ur29UrnHQM8kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50770ECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166213385332.1265.6134664693777993770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12e913626dc3d8c08bd08d7d55e31eecf228c1f9c17a2e88ea6b938580d505e5
Date: Fri, 02 Sep 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662133853
