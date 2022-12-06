Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5CEC6AB3
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 13:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 780CAC433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670332254;
	bh=97EPJiTLquu4TvTHXIhz0xY2tnjxzDfJZgteozx3QmM=;
	h=To:Subject:From:Date:From;
	b=BhEFAKCijIrBZ9i4sNy8+qijuFs+oY++yml9gCHoUIH0bkr5ngIP+CtU1W27+4hCe
	 xV1HTlNG35kokefHqP3SetKU70ZQVmgnrfY4OPXrX+G25eFOVE7jZU3SWUHHwKXuaT
	 4OE75zRi/HQy/rJJ6SpEMshqF1rFb+HiXqYH0KuQ5Gsb6R+q4VjHlh1HAclFJuPhBM
	 ITHuSRu/Iy5WyMpnoPx5ILlt5aXzowL4sFw8uVgpfYh00uFdfyw5SnAKywos3L9hqI
	 2nMB+Xil9FpSSTT+1V7ouYgOfsfJB/dJBpVjPmonBU6/TnsduF4PXyIoSXT4cgvPr8
	 LD38QGvYfNIPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58AAAC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 13:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167033225435.12823.5597569411932645551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7998aa2c01116839d03f04b1ceef21eea5bd6559da0c5ed3757940d6ac5a63ac
Date: Tue, 06 Dec 2022 13:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670332254
