Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1DAD2C9C
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 11:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BAA0C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 11:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671708087;
	bh=sifY+qzWEtouv3ZSRUbVAfDSEu6qNH+w+1pOeHffIJE=;
	h=To:Subject:From:Date:From;
	b=P/+FdwPuPjy5sChj+fw9Foq+t/K8GqG2ywwrk/029mc1fDjb8ewgXPd1Zq+6ixjEU
	 At8wdXTYIw0BeUNZ0FLbY99NuPB5vgHWM0uJEdRpKyy6xxfOCHjTGZRar+R7BSVrPj
	 aYlDZ51jQLNPy6+U/MA+YbLprvJteFyMY/xL6F/nn8WqCUMh6K93wzsqsN5Vaz+gOA
	 7dpVt7RB3iw8SHOv2Eym9exOCcj0j0wMM9N9jscDVUgf24TuSs1Qz8ljf8imDgCg01
	 wje0CrnASEP2vIa1gvYbi/mg4PSt6BpexQGMV08i8eprfq5zrbM3bGnnEnrRmlqhcO
	 +HcxrOBmIhGkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E404C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 11:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167170808744.2038.15423654942559181315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d45712bdd607455b52db62db6f6287f95f693c45db32b273368a5e33fe00973f
Date: Thu, 22 Dec 2022 11:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671708087
