Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FD328EB
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 13:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC42BC433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 13:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679750525;
	bh=G3Q7aA3ODmDxUEoQqspWJmMf61shUyLK1OVu0VGies0=;
	h=To:Subject:From:Date:From;
	b=G5Ezq2ugjkT2lpLVCVoWyTb6Kc6ZPOIPv3MXVkXoaOSnr+unWrSQ1hETd3nD6lPuD
	 eGBCuV8xxIwtv+gR6m7qmo0Yuz3Z2pHkCAYhJgNJPYXeXrcmPFJYIpTT+fVinlWCPf
	 H3B5gpF2bG5072BeLaJ7cxZp1OhxcbigrKANHffFG4koj4FrXVxchKOVZ4ha5SHVgq
	 h2eJNhFdOw+VxGk+a4s7MUy2vJiRJf2Aw4tgD4gniWSC+MAYHPMaO2qMo6xovxqtOX
	 4tgG9UQBCiiWEyofxpbR7zsskf2zNzH8FGfLkrsxzOjSciBj0bfanoNfMBZxF9KmqJ
	 W6G5+IA13+RjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8F7C6FD1C
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 13:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167975052575.22855.17589283696234810008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f0b62b9ad08eb8bf210f3c6624e663e902b927aab59c61052ef7d9547eb300d
Date: Sat, 25 Mar 2023 13:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679750525
