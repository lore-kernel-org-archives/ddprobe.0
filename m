Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDE5125A9
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 22:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02A9C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 22:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694037848;
	bh=nYzu9yKwChhDAiCXvdMnge+GJXgzYYtyIjer/PRqyY8=;
	h=To:Subject:From:Date:From;
	b=CWMKiFmpWJ4PNx3Ji5up94sdqJfj/EYB0HA1X3DZq4FCiC/RCjJmVYb0ifYoGDukQ
	 OwTHDrezi1glFcHKReRAeHbM7pG7nqpCs5TMzqQzW+b3EF6teuxxTaeybD/PkwYU0M
	 TmJRSp2C4nqUz8pgoZ3rezaCgcNDnNMY1lcyESr0H71dWfY4xC5yV4sGLNHBd3oBnf
	 CeF1mtfW0m5MTRq6yZF649tH1bn2XROFbwJ4Nbk7kxsL5IhxriqLkdXDBLa/efD+fR
	 2PySFOubxuuGwNtX7nAsShervq6eBbcPDIkz6sH6K262ZOirHPLVnmxtAAKWlqCE9w
	 ZLGptZNUQkR0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B698CEE14A9
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 22:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169403784873.14318.1097722608527446085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2480f5e10b3435eb9e39c4cdf7a3e15b90037fdeb4b375eec9fd41c629da7fa
Date: Wed, 06 Sep 2023 22:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694037848
