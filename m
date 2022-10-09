Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD7F133D4
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C18EC433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665347453;
	bh=gLCReVA8Fb0OZDs1Mybx7ttQ7Qf/ENDeGLYAfxkmNXI=;
	h=To:Subject:From:Date:From;
	b=kxFuowblqU80rEjmQX03c9LhXjaFuuDhaFlqXCfbvjKzMiL9ckQgTFUdjg3fKijtO
	 PUHNOjGedeD/yxF7b57vOLbFiOb97CHxQ04PV0EM2DNB2Sk22V1+H7aX6bgn3WwVu6
	 UoswS9FX136G6xYtT+rUgOAq7v3cpoL6fuSJ3S4dwNZvWlsrJw8ZaYZeDbw9i57yZe
	 IX7nPyjQ1k9NHxCLnfUUA5hwN9V6rt+vx7Amxn9wRHmMcMFZHThoEtpKY1VrCmXN1o
	 +b6bYn+jHN0WQIXsxSKmLOOxyZOe5Askp112YVX4rlMKrd46ZWtfi2vH2McHd51Pe9
	 vwzxb0t+SP/JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EA4AC433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166534745336.8887.8998288585683438147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eae3c866f3865585626aad9e07cb3620c4b53c4350d5126948e773f447179d7
Date: Sun, 09 Oct 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665347453
