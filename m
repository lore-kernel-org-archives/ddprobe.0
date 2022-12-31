Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45ED2F44
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82579C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672501887;
	bh=DJr6/wiqrB89Ero8uAY6mgxDYzdAR6BdX0/E5A9kSyc=;
	h=To:Subject:From:Date:From;
	b=qRut54p5+O3uvvZohzwBJIk0YVfZcx19F9aEHl1erET0WX7bTeAKmVjnkQN6mVBjW
	 1/8BH43FeiRBbezQfI1Gggo6Ol+Xo2Kf8A+nDfmvpdZkZI1jJi9zxcSVzy3/p+7UNt
	 RANTN0DaNp7rWJphJKIf+3JNN6HBv1JzvSBMwY5UllcO7x47VBqHouhIhBA42mo7x2
	 YLmniy8w9uXj3noLAPnz/rxdRM/DuiwdQYE4fh5FOFSKMNh+Ozwu3zPomHQaTqKhMn
	 Tu5LsizvjDMKCvo9ilWIlAqeJMJ0X/HtGPgvSnNy8RW1ALdLE3boys9P0HvJeNVo/l
	 +JNzKh8B1A7RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66A4CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167250188740.18584.13766169788872473973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4685e4cbe1f62e2757712a8ed01b12c1a8227fb118c897321aa60380da2d2bcd
Date: Sat, 31 Dec 2022 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672501887
