Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46F76ADB
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 847A9C433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672174287;
	bh=NkIVqMYp1IBE+S44+Z0mm/6GCGdedThzYppil2hR3No=;
	h=To:Subject:From:Date:From;
	b=GdjfhPYD/bUxnOFRLS03ntBag0tTLBilOh5/Pw59TGJi7CAHPMjQ3BY/+5p1IXI+C
	 yFBewGFAKLPdCZWvWTOweQ/Og4xoAakB5VV5Ro7/OVqFjSnu/uz730JMe59ix446kK
	 RkH+8Wh05Vn6Alk+BGCFONJgT0T5vejRrDUA3IxGqPNpZZomqo2CUSJlUqmN73jYT8
	 tLodO2XzC3Un3H5qkaFpRV5wFj/eopjDGwkehqtHftOWXgYYfr0/finZ6h/MLRJxg2
	 X6JzZMVsD613QNls+SKKR9OKhdfS0ObYax71lcy3Zx1iGJlwa8VnmM/VOtJTLlhHgh
	 BMq8PqFO3hFrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66F78C4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167217428741.12725.16180496478867269356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e0011ca94151214dd1adea2bb119ef8eca9d22ef97ff5bd133d640aef89c8dc
Date: Tue, 27 Dec 2022 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672174287
