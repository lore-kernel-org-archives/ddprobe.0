Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFEE47E
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A52C43144
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667304054;
	bh=4BiY0/OKJO6Qcu/gBIk9XVDpqqVl8K1ZLuMTHvN+1c0=;
	h=To:Subject:From:Date:From;
	b=ancug8tbnfzaqVL6he6EeVYEMSOjdbvhNKXUJTnQvdhDYZpC+MEthyMmgIfjMrmS/
	 VcOd9qOUUrFesDOJCElJ6+8fCEG0rGj0aWjy6w+zNoszU6PBZfmPIgueUCJR/H5rMZ
	 2u95bgHZNggI5fZbI6tjPJ5KcEBXBaqcW4ZK5FW7JPXC+QSWGnOV2PfIGYzKMAn080
	 DFLN9KmytRbeatiXhgmWppJqRjZxqMpkJojLQYr8GOgrUUDyLvZWp/LHMVUnbjykAo
	 zVQjb33YfvTC7vaaUcVX0clMF9sHAKDrWSnTmLy+HyK5kCmTk8Xwi/HtgzOHm/3LPH
	 1XgdXxtOUze2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B70CFA373D
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166730405436.18120.487363003569989717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f4ae9604ad0ef3e968ab59f8495bf8579d015131df47a3aa370f21f41fc6b0
Date: Tue, 01 Nov 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667304054
