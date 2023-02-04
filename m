Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F131FB7
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 12:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB7AC433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 12:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675512365;
	bh=YtPp84aPOWbJazTQNusYZn3ir5t4rB/pWHtpiknV++w=;
	h=To:Subject:From:Date:From;
	b=FCHz/eKgybav8lTby+mkTIg6MkaqJuTwl/k+iTT5P9vNq3apkGyChp8rIV2xImBBz
	 lfWj5tFY+VFS9s7Z+Zwld7K4S6OV+HI5nTY7ehZ13lPapuJqGCFvp4mBfoHDtC9CIH
	 bCgO3lfpOGSdNESld4/Nr6pf22/hgjv/UG7B/ptawBpB+R4k02EJHKiKK7ymbnSAnh
	 Z61gXMJC60S5AdT2h6DgX7NbJ2ro1/6HeQMaQh2GFw0E8iCaM9Qo56fhkrl/fCAmeG
	 PlLOcTtzKvSt4mU7fAa3g34xTFpqc9sqR9w3lz1vKRgALa7htsUuM8nNGy501d23ah
	 PtG2Xvubl5PCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3464C636CC
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 12:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167551236579.26700.1502639331535277432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e308e11040e46f3b1f0f103b90f5924e90fca9551af70078816380ed9053f4c
Date: Sat, 04 Feb 2023 12:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675512365
