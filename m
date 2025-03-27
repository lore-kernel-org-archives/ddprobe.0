Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573CB17A303
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743100794; cv=none; b=ur4SGPLXTiluVU/fZdYjsS0m6uxU2NtEau32P19UmeBgIYZt0cV7aL8dRggFa06acBOwUr1xVyPvQ7LBSKiJ4FqWoMUKim1fPyWbc+QIgThLAzAeE0J0BeC8yFZeGv4zvwK1UP0O6BZhbmc0VRZpnYvEk2nNH/uEygBfmeWqJ6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743100794; c=relaxed/simple;
	bh=nMVHI8FXkWwBOCNqIeE3Kcdi+Q5Fp8uWmsRw+tJ1uVM=;
	h=To:Subject:From:Message-Id:Date; b=G21mug7y+J5qtAHzLVyqBAa8sgzuU2F1KqUXbSK4fsWW+Z2mCyLzcWJhXhldW6s9/gtLFm++vbHv9NfB5sOXM5hL4+s/f5f9d+ZZ8OiMS7RogsGy7oVKjosl3JpwQQ71komx4wd0EDtB67kOlebNQWm7MMKXoMbQg7jo2ZlAPyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBW8J9z1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBW8J9z1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0442C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743100793;
	bh=nMVHI8FXkWwBOCNqIeE3Kcdi+Q5Fp8uWmsRw+tJ1uVM=;
	h=To:Subject:From:Date:From;
	b=HBW8J9z1650mcZxRZ50DmT8v0ybJy2BcSSrkp0HZIVMC6doFLSPdJ/8Ujb90EqD0t
	 mEUhLDeSfgQCKCfk6oi24rTvR7gEDc6q1TDol7HES30y3LeOmgrm0t/kepdeX8OzHi
	 DwO65DJTn8aHlCB2zrvstqK+AnmmBPS1KxzhWGQdk/ZsO993InBYRLx5RUkvb25jVQ
	 kLRkpKxVJjuyQ2sHrWJJsGZ5RAb8dyzprrjUR/0R7EFwnnkvd6yNo65SkfqV6xtPZH
	 J7rtc7/57nbH9/Bh8r7uDlHW+VOneoHQmV5IHweOJ51ExYPi+L01R4ySCM+dcE+GKX
	 nABPP9QAy0zjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F670C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174310079360.8131.18263829275691114493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23cdef5d574ab814536fe5010d699506f8483e3edcca640071d5a220f7cc21b8
Date: Thu, 27 Mar 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743100793
