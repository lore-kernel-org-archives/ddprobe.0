Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC170A51
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 62ECFC433B5
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664356253;
	bh=E7A1pyPicTXIm2vO0YnvyhyGOr2z4DY4v03PZzBqfdw=;
	h=To:Subject:From:Date:From;
	b=spLKaBGCEcBXd5YkctUOFhzwgRCvfj3Epum1zg9q0W0GbhEEnJRUH0suwVkhZgWgb
	 4eNj8WRi7Hg1fNyKog5wjiu2EHvY4HewaY7WZSdZlYSLSzVyBiCcV+sjOa4kzpoZUV
	 50QDOdzKL4fFuwytRwUiWixmlFyetK3yqNFd3mOpMbTzXx/l0dkD4iLk+b7Yjjg1ub
	 R6IS4fhjQ9GPPkTNCv5pbbma2A/jjWrhB6eYiTVQIRodmDW6coRqF9Sc6Y7ejGiL5u
	 BM9sHj60dcFa2QUUjVcs2T776BZ8EBh+1b1lYrGUJ0Z2UTOpETYIkecX1ZH1IW7mNg
	 q7EWHi6D1lCqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EB54C32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166435625331.2556.5597928503317071051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed87511f66f8285235d3c9340990a60f93ae5d8e1b958fbfc1d6a8e9d2eaa46
Date: Wed, 28 Sep 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664356253
