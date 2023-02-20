Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51934A3C
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 23:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEE83C4339C
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 23:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676934546;
	bh=99800LH2F7hB4vbo/N56VUR4fp2g7ntvM7jfTt8xxUY=;
	h=To:Subject:From:Date:From;
	b=HsjaxxM5HJOPoemkxfNpXcKRMAqVqR7WWryB+pDWTvLFjb9PfhdTLCC+u1ho/dx4C
	 +mKMFOujDd5MdHDr/g2N/Pyciq6RsMXoQYA5Q5RnX/bbpO5fLyMdP+PbFdJ8oOGG2+
	 R0NVp8ijFABhItbzUl+7LbRQpcr/ioFztM8GjURkmuCif5gCz3RXzONqwMgWPyjx9u
	 wEQUiJ/FRoXXSnZl50RW9cLr70cFKwbeZ1R46NUzZ0nn2qaaV/S6zTsx8A80M7x55I
	 qH8I4HVAkzQ4dC49GT5WWXKiSfKadGLpuG2c8K2fwIY7ia5DwGcsnV66nswMurc4Yy
	 X32Egr0+UZ0aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE0A7C61DA3
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 23:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167693454583.8047.14348203434061969068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a57225149718655a9d946163a461a59efcc96214b239c6f7437f469ff7f37323
Date: Mon, 20 Feb 2023 23:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676934545
