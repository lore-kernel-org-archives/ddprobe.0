Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27881854
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CAB9C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670808087;
	bh=g3BE7UqHYmgIKS+ibZ/Si4zPz8v+tY9XT8iTuUYRylQ=;
	h=To:Subject:From:Date:From;
	b=brwBoOElJymZ383ePWA4G2jffEMyzpLG85ZZ3rKffBFBoVVQjEZ0Drpps3gshG4o1
	 V2mG9VPxAWBd+p9r218Co2Uhaac5Q90lgx0sOAEB/V1rA72CvYi84Qcf8a4B3dU2x5
	 a31uZ2gl5kIiSWiqbpbHohKXrLAJ4eByRJ6NFnW+hEqfyvRfOe+lcOFBOntyB1OT6X
	 HEPULGIu8Vls+5Z64ncZMU2LCyzPg0sguY8/t3xNIqHYnHoYaL8aUMXUqQNSIuznWK
	 brhM6WZATKETV+et3iIUJ7U1Bm57V2/eH42t378qpRXYRm5KhizKERy004UtCwjH2F
	 ey12Ij+n5Ie6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64C9AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167080808740.7991.7321642679863911193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6056d382c29d80362c79a1f865cb0be610cde072968cfa8a4837ec2f49efc0
Date: Mon, 12 Dec 2022 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670808087
