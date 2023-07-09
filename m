Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E71A3C1D
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 12:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A20C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 12:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688907428;
	bh=u/ActmU6ejwBeFD0r+ThLLpr2awda0nITU+TbqqmEVk=;
	h=To:Subject:From:Date:From;
	b=ORrLVnNiimL+6kpnCCiOFRB66otZoyB42x8PtbDtciWpOzM0lB+KHl+KnA8Gu/FTm
	 nPWRAbrcXKiXVyz6qLjuZl62ozZ+ZnJqbE361K6scYxyOffMTpBaRlt356bakde4ko
	 Bl8ETayO9KI+6lqi6HhJHqHRFS8QH4YbSorm9rDXsm1/T4lmQY4VEQFHndukejOWuB
	 XHKhBH19vquYzTaBEH1SI2VKm39qzl8We2YZfQNx3HkT+0UDnrG+XQMoizUqzvKh+9
	 bOnK6me04cCOXUFGlXYa/8cf1O4Nf3ZdXOvCz4CfwLLc9q5xHvq6h5CegRJ27bT/t3
	 mRMBxFTLXeG0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5C8EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 12:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168890742870.11919.14847776920736186709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d6974f892bdab635c8f89a1308abeec9d06970c87bcb619996bf4263b9caa0d
Date: Sun, 09 Jul 2023 12:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688907428
