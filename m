Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285212902
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 08:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A14C433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 08:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677228905;
	bh=Hz6+nprqAWHi44VvlgndOfAToYWPDFvA727XMnG6jZg=;
	h=To:Subject:From:Date:From;
	b=dvoavb0wGg/cyKeER83xXRNCgN4Iffwp5ZAwaxiM6i+d3HS/DirGLBl26s1MLVck8
	 VCGLJ64zsGFR6UTKHGze3dEvxB4qZ9t5ZCBbvSlfTFgk9BaYyp+VvRrEEchjsAppaV
	 9h/9pZX4ncLhU4Xv31KQYL1GHzJ0r88TT4VP357MXkwkUIYMn73+PGbSOuQ7OBLsbN
	 ywnUACQAWvRaQw6b3px2Nqd0Ff3VnVBDm1SrmSMrknEvVXzVI6QgNtMta3blKwBpIJ
	 FBRZNgnrrzEYwDHue6kTK+/1NuGpc4GZsXa/vdmOF2XTklmBMKkMZ7TwPNWggrxIsi
	 4j50/9KhzFghg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5DE3C677F1
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 08:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167722890573.13856.8395690140579521003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87cad80997442b75964c937fb5d2d0bc76351f460e9505bea94952c49542a403
Date: Fri, 24 Feb 2023 08:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677228905
