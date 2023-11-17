Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304AD29429
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shtEPm26"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88CC2C433C8
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700240896;
	bh=gdhAlpRCW9+ZPziNzv283nZZM7IOXm2voBDX2Kkb7Gc=;
	h=To:Subject:From:Date:From;
	b=shtEPm260Kn0L1bUsNVlCWpavEMo6zt95OSHykB6MS8rkUZX6RAHJS3+4pZkUkV8B
	 z3xVvGJWgudw8ecOJahEvz4FvMkE4WSFmog1gLjBEm0l/lKMBXhunHYmbEqrYGEAV/
	 pgh9OckPttugOChnVeoahjJbIeqYyt8r/eUzKu6wFDD350ELv837DKEUKrTipeZXhX
	 Bx6dRArq+CJk7obmvo+3Hm5YD4/6mTvn/FiBgHoy/LXnZ1s05LEjJjImGi9kG02YNT
	 Qjj4VLjsm3/RQqLdZfra96KFII0jwrBxmNPA9hf/kf5aQZvRf+5xfVxcewy7fOl5IW
	 78dZgz4Veiagw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66645C197A0
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170024089641.4159.16959675734338782685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb8a1cec558c2173754475714d968fc2d38f5d7753449e80a73826a64ef49060
Date: Fri, 17 Nov 2023 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700240896
