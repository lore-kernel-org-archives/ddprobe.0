Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182F615A5
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGu28Ts6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82D70C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704508096;
	bh=gTBOZVl6mcCdHZvUd6zhXqtcEGqL6fDeWh3dUmhSC+o=;
	h=To:Subject:From:Date:From;
	b=aGu28Ts6IZlWobhAZEYWfpPRGBal3umFa5GVbX4kNuaZx0bt7w8+CmbtycMjMyFcm
	 wcRYZPwh39R3IMVPGlBMO7qMakOuomJzyco9P7ZprZmUB81P35cU9dkEutqqAHGJAK
	 nM9CDZs0/nlbHai/5OIsUS4tzHwjQsFBl/nlUoliwT0fBNN3DzurFaWRt3sX/TdkYQ
	 rOHnZ12BuchenM5Xc8sQ4d7/BykclZmsJMWzSedJRJNjOVN5P0d0asR5xkynzQ7W6E
	 Wcyg9ds1jCSoK5lF6+WMYv5fssu7BWwxquLkaadG7p+v86kgC186KUTfS/QWGcY8Zm
	 uQ1N3C7x8nW7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 679FDC3DA6E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170450809640.25107.2388394426342809945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a82583684da9185a38c47dc516e96b3b9a0036a5380cdd2385897acb4de9eaec
Date: Sat, 06 Jan 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704508096
