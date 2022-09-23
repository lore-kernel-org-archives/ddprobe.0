Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C972B3D63
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 13:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 767AAC433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663939853;
	bh=4B10MMnMVsW7hyDuuOz+SjLLTSqhF8TCAvGPbN1QaJQ=;
	h=To:Subject:From:Date:From;
	b=qeA9SFcCrnArm/H7QPBjdWatKFI4P2/BLrpW9q0gRLz+rzEdD733dOtqvd25b+797
	 KC7TfMqANUF+sTPRXYfO02SqVlG2FDpYVN0/an8qbVOri1xY2y2yRBSY7AYP8Y52Nr
	 +ly6JDHTG643eQ9ZrBaBw6yarSAWiOlRwca+A4KBLzsnFeqQHRIEK3xrnXPJ6nKPlF
	 Ud/OYNF2lmjE6bwdaeKc4xhe4AdkU/jFm+mcJ3QVdX8hy767gdOThRRs619cG2jwZj
	 84Allf0drWul5L0cFVfcIRA2JbfG/6pN8kyZhXHh4wrIanQ1UsKKogsv2UTmxcGvVy
	 Mx4EvKkXg3Rww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E93ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166393985333.4544.3706149477562521261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0a38e1d514959cc0c3c5d7705956e4c05834ebec980c48f2ede7c5bad9746ab
Date: Fri, 23 Sep 2022 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663939853
