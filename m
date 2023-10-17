Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4626941758
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 10:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0JvRjrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB6C8C433C7
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 10:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697539628;
	bh=DYwyvDNKZP+eB9kT+l0mgvr7kDQY/LWytqzAOrSFRWI=;
	h=To:Subject:From:Date:From;
	b=B0JvRjrFH8YOmlBoNUFYsb0LOFuwNtgbvbCgxbHmaPiRq45he+tevSUNAnSAaZY+2
	 9qF/pf59zK/KEqQoemhNsMeSk9y3/mDIRGXkrsZPa0sNO5YDU3X8KtKvFYeau1HNGh
	 0FCDwPZV7RO7GWZZlrukCu3+RDzFCuyk7y1aTo9np4NGmZt/fPeVP44//CMkOEG0Xz
	 eFR0IdwCCQnmCEO9uuoF9OskQku5V523iUKpgRpG1AX58LC9eA+XEqIDBIwg3jkus2
	 IBQB0ZltuzuflA08OKFpmt9dRDjCffetbm/Kd3Klsd5OhdxEq6hI1yXwlXGy9fzLWS
	 PLxiEHCU9zxAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A68DECDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 10:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169753962867.21523.15788928063340106145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 471cb3017b2807d9e81224cb25d392656769b483a53dcd3ff1e53e14ebac5890
Date: Tue, 17 Oct 2023 10:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697539628
