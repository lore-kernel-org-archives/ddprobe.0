Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D80C933FD
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FEF2C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673345487;
	bh=kPG6EOsXJ8cY0zChKj2G7JoqP5e1UouUo6zHvjpGTQM=;
	h=To:Subject:From:Date:From;
	b=WJ4qZqgcJ3jJO9qMIoajZUIR3YUMe2ofzhlgm7QOOMQLkcVXd+tsLxInBPHp40cQk
	 Z0nsqroBmR/GLSLDoQ4LBuxTsShFUv/Q28rNbRcdNHIWHFHAxjiEWrnRx9DYK+rNS4
	 C+XOV5CDxVOME+Q3cn2McNZ5pDrLUrw80Wb0/VKcxjAPzsBlzhYYHwo0JNxk7JAgS3
	 Ie/t81+T4Kx2RS/xYWG2Kq1kMTWhnyTfHACXwrASEI+vh1yb74vBrVUHTrN9GylEx+
	 bqfFDaqZW1yykmuU3sY3R6iEWFmFhMAVP+Wksd1Q11JdL3Igkd29Ze88TQl4ewTKIa
	 ghydGlnEkaI3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72663C54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167334548745.2261.8191344232559964180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01acf822a56dbd2174678f6e684aba7d05a58e93d8d4aa34d13668414abfcc16
Date: Tue, 10 Jan 2023 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673345487
