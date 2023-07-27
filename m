Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AAEF1805C
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 19:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D175BC433C8
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 19:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690486328;
	bh=znWdd8LZMybimPM+ZejMlW8AHMwtFn0Ex9+iFS+YMWs=;
	h=To:Subject:From:Date:From;
	b=ebYTGK31s6RpJ0kkIuc5/AAba701ErdBDXphAawh7jtNkXuOOCU6+aHS7s3hvGsVc
	 MzLUimDUpZ3ullcw/HRNrHeXtgT72Dy1fEz2GAr1vS24bWmSBigxzzkcr03i2ALRI7
	 DwhlcMPoAQvvc0xGm4vn7vQsx2VKhPJTGcQCScAC9mXPkT3uol4BjeLDyAcypuIlOc
	 8kuM4SnFhQeTe0rkf1G16yHZLLM/evvg8SQwveykHwE8da/QV24OUhCqF9siZjORM4
	 iYlsZbZUXqHZtKiCZmmeac4+mvFvL8fj46lmes1eyXRF4sgOKu/hPVGoeQSkv2DMl4
	 TREupIgQXIh5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB781EB64DD
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 19:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169048632869.10452.5603214049815489867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b90a9a41a76c31ca2a1a76fd9360d392b5d64dd510d63ff59fbebc6dbd210c
Date: Thu, 27 Jul 2023 19:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690486328
