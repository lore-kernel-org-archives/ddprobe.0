Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F033D61
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86AD0C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671906687;
	bh=IcE4d4vzz5Sn+MTrN6ppD9N69Ii+c0XyZZRDGRkLVMs=;
	h=To:Subject:From:Date:From;
	b=Psc0qn8Udj1eP5+BhbEkqn1C85F9+9LkaSU9mPJK5Q+TnMxQyYN0tUKcNJprMEWo2
	 ZCnYt6XVQpIdHoD7wmGlAQr4GgDs+ATd6Xc/w/W663lLwC+zRrnit+4PO/Jhtw/jXC
	 ds0PDvkRXjy3PkPR21yXWECwMu8lYOAlZ2YZ2IDXL/Ni9Q7TaNAJ46cVwyESxj8lmd
	 l//vgit/L1YUvGmBNU/Y4L2kwJMIx+p6A+xAVhj2anEDr3spmBl3sPsDT2WNDmiAWb
	 TuAGd6I6G5NrYfPbA78toDVJPQ/i64i3MTlkzuNaEhbUCOytLVrcQVeqRfm3VY8R1x
	 Lvj9j3da9J2dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AA32C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167190668738.3301.16329827580378508964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df73b03ff23fae2802e85157fdcd26019d01d6340369ec03299834bfb50f1a6
Date: Sat, 24 Dec 2022 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671906687
