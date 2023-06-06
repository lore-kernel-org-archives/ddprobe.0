Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683B27E4
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 22:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF023C4339B
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 22:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686090725;
	bh=CNVjWc8v3jRH54e131z4ZRE9IRyMoyP+JTfut+qCn2w=;
	h=To:Subject:From:Date:From;
	b=CdA6yA8t+opXTc90iFO3q5gjt0BrhKUEmzKjtsT+Spr5mScqSw9AfB1vZ/mHW2ybs
	 KThFjbCCqVGIsNJEECgKKpGa1pikiJLbETBoqCkbsW9KJvc7+4TVrkTSHN/GRwOnPR
	 wSBqnJwKXHdTKlKDzXYKmrh6RZGe1Mcc3sEcZrSxvw/Lz+306cV0nXyo9ZaLUNAgnW
	 L56PbLckflW6z8ydwWjmAy95k1vsMie02M23FuW01NuIKHK5dD5RQ8K7dqwaU7qXII
	 hcgm7zVzyTtPzM9oxoGrqWzb9DSHRHx4t51PwSCmJEN9l/HiFb/BYj9SpIZmPfgG70
	 iCu9uNagHf3Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1FC6C83005
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 22:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168609072578.18010.230817719077275989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2391f974011b1856fd6f6e2c64c2ed0adf5bb5561b3c1aaebdd018cba1abdd1a
Date: Tue, 06 Jun 2023 22:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686090725
