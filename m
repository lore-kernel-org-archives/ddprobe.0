Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B530B2C9D
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 671BDC433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669387254;
	bh=/QJxz28H2ZtrAftYpfWXZtmvZFl6zZhM+cY24g3ewAA=;
	h=To:Subject:From:Date:From;
	b=b7sE32pNWNKI9mi7RCRNLb+v8M/YO+HmH9bWLbU8LW/febCkTsQhYadhdQgCE8YNE
	 k4hJ89O4EmA+HXNaGEZC+NrwXjol4ONWBy6VYBcnHkJPIArm34LOIem1w4EPQMmYck
	 YVi8sEpvfGBj3GyxnpiP5HVB9FW0i4pNwRoJAjT0xH2KM8RMySCgteNtR3QZppCsDA
	 d+3hCvArQykTbMQMkGYPkX+W5mPLzYrkdks3/+y9ziu8237EBd1KSFyZOVvFNd9Bxc
	 n8FEgdjeuRq+kSV9V/fe5A1J9KRv9ChC+1HWdyjKV95BYmJ76i3dLw+DwvINn5fHsC
	 pBGEC/Oi1Saww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FB79C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166938725432.22700.13896374563307889023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 784492ad9056c4f5677978fdb9e02a8aa4f6c39f05d0c3690dda69baec731687
Date: Fri, 25 Nov 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669387254
