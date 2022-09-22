Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFAC41854
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75999C433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663852253;
	bh=aqAY29wpOp+mXh8zLw8gAOysiS3HGtpFVRywcMy6EcU=;
	h=To:Subject:From:Date:From;
	b=aZQF45wBQi/bStrosthR8Q+ItGopzOCmLMVMvLSLoh31KnGu+h05c8j3Ltog83upn
	 iF5R+1nXXMryWt8ulvsOtT1mM1oScEamyq0tpQrNCcRxOAqHwdOxWjTAw+nXYPDuiq
	 VAQQwGrFILfYiRQl1CocKJ9wf6i5oX4vCqKXTLmmB9rYcZIBjvSiQs7u5nw9Io3JDs
	 mNgxtDTDbrlrzpCTMG8gREQG9ccZjsmI+JaTMlXqcPMY+3S1pZVLY/+3uresn6N9R4
	 0KlUH/xLkhpuFgmPeUE7r68lnKPvL35N6B9rn+UjYP4U7J6ZC5W6VghRL1yg/vTAXt
	 uRI+cv5t2dkrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F009C6FA82
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166385225337.8986.5480876578657295911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b19b704af831347551bf73581546eb5f93349ed73721daa3a5e395d956f6a8
Date: Thu, 22 Sep 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663852253
