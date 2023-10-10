Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C4718639
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 16:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="raA/BYdi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8326C433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 16:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696955228;
	bh=TMtqNPAYVNE3h+kug9ZJ/B03jXzPw80yIaip7RYD9X0=;
	h=To:Subject:From:Date:From;
	b=raA/BYdiHNh0ULf6rEbTuMtVy808kxY54gfdSV8nnPDJ7mznNHcI2sT94dVJw0qZz
	 xEAqER7Y06jrlFDHBrmgkjy3M6Cwmz0bm0i8f8G0uJ7IwZTDHELxUyZS1+ZW4Q/foU
	 5WnS1GF5JqysDNm183CP7Y6JNKyD3CANcMWnN+rQRAAXitPm3kgC1MuOyHMwobyPFh
	 smZqNgkLx/snQo5TFGOATokiJNp/z1qLmDxZUQRcvuGdZvyM5H3ljcMrzJlhyzuW15
	 ncQ86hIWf5BTEtjiqIJPUslohPocN+H7zRSwhvIVPfE8uN8h0ugl8OsZY7lHjJVDH8
	 KbevmYyDeO4eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD205CD8CA9
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 16:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169695522869.14425.7811798443047136273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba952f7d7bdfbc7761dbe7655e0c7cdc47b92a22a4c569091e9eebddb79e5dc0
Date: Tue, 10 Oct 2023 16:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696955228
